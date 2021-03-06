package com.zking.ssm.github;

import com.github.pagehelper.Page;
import com.github.pagehelper.cache.Cache;
import com.github.pagehelper.cache.CacheFactory;
import com.github.pagehelper.dialect.AbstractHelperDialect;
import com.github.pagehelper.dialect.ReplaceSql;
import com.github.pagehelper.dialect.replace.RegexWithNolockReplaceSql;
import com.github.pagehelper.dialect.replace.SimpleWithNolockReplaceSql;
import com.github.pagehelper.parser.OrderByParser;
import com.github.pagehelper.parser.SqlServerParser;
import com.github.pagehelper.util.StringUtil;
import org.apache.ibatis.cache.CacheKey;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.session.RowBounds;

import java.util.Map;
import java.util.Properties;

/**
 * @author liuzh
 */
public class pagehelperdialecthelper extends AbstractHelperDialect{


    protected SqlServerParser pageSql = new SqlServerParser();
    protected Cache<String, String> CACHE_COUNTSQL;
    protected Cache<String, String> CACHE_PAGESQL;
    protected ReplaceSql replaceSql;

    @Override
    public String getCountSql(MappedStatement ms, BoundSql boundSql, Object parameterObject, RowBounds rowBounds, CacheKey countKey) {
        String sql = boundSql.getSql();
        String cacheSql = CACHE_COUNTSQL.get(sql);
        if (cacheSql != null) {
            return cacheSql;
        } else {
            cacheSql = sql;
        }
        cacheSql = replaceSql.replace(cacheSql);
        cacheSql = countSqlParser.getSmartCountSql(cacheSql);
        cacheSql = replaceSql.restore(cacheSql);
        CACHE_COUNTSQL.put(sql, cacheSql);
        return cacheSql;
    }

    @Override
    public Object processPageParameter(MappedStatement ms, Map<String, Object> paramMap, Page page, BoundSql boundSql, CacheKey pageKey) {
        return paramMap;
    }

    @Override
    public String getPageSql(String sql, Page page, CacheKey pageKey) {
        //处理pageKey
        pageKey.update(page.getStartRow());
        pageKey.update(page.getPageSize());
        String cacheSql = CACHE_PAGESQL.get(sql);
        if (cacheSql ==null ) {
            cacheSql = sql;
            cacheSql = replaceSql.replace(cacheSql);
            cacheSql = pageSql.convertToPageSql(cacheSql,null , hashCode());
            cacheSql = replaceSql.restore(cacheSql);
            CACHE_PAGESQL.put(sql, cacheSql);
        }
        cacheSql = cacheSql.replace(String.valueOf(Long.MIN_VALUE), String.valueOf(page.getStartRow()));
        cacheSql = cacheSql.replace(String.valueOf(Long.MAX_VALUE), String.valueOf(page.getPageSize()));
        return cacheSql;
    }

    /**
     * 分页查询，pageHelper转换SQL时报错with(nolock)不识别的问题，
     * 重写父类AbstractHelperDialect.getPageSql转换出错的方法。
     * 1. this.replaceSql.replace(sql);先转换成假的表名
     * 2. 然后进行SQL转换
     * 3. this.replaceSql.restore(sql);最后再恢复成真的with(nolock)
     */
    @Override
    public String getPageSql(MappedStatement ms, BoundSql boundSql, Object parameterObject, RowBounds rowBounds, CacheKey pageKey) {
        String sql = boundSql.getSql();
        Page page = this.getLocalPage();
        String orderBy = page.getOrderBy();
        if (StringUtil.isNotEmpty(orderBy)) {
            pageKey.update(orderBy);
            sql = this.replaceSql.replace(sql);
            sql = OrderByParser.converToOrderBySql(sql, orderBy);
            sql = this.replaceSql.restore(sql);
        }

        return page.isOrderByOnly() ? sql : this.getPageSql(sql, page, pageKey);
    }

    @Override
    public void setProperties(Properties properties) {
        super.setProperties(properties);
        String replaceSql = properties.getProperty("replaceSql");
        if(StringUtil.isEmpty(replaceSql) || "simple".equalsIgnoreCase(replaceSql)){
            this.replaceSql = new SimpleWithNolockReplaceSql();
        } else if("regex".equalsIgnoreCase(replaceSql)){
            this.replaceSql = new RegexWithNolockReplaceSql();
        } else {
            try {
                this.replaceSql = (ReplaceSql) Class.forName(replaceSql).newInstance();
            } catch (Exception e) {
                throw new RuntimeException("replaceSql 参数配置的值不符合要求，可选值为 simple 和 regex，或者是实现了 "
                        + ReplaceSql.class.getCanonicalName() + " 接口的全限定类名", e);
            }
        }
        String sqlCacheClass = properties.getProperty("sqlCacheClass");
        if (StringUtil.isNotEmpty(sqlCacheClass) && !sqlCacheClass.equalsIgnoreCase("false")) {
            CACHE_COUNTSQL = CacheFactory.createCache(sqlCacheClass, "count", properties);
            CACHE_PAGESQL = CacheFactory.createCache(sqlCacheClass, "page", properties);
        } else {
            CACHE_COUNTSQL = CacheFactory.createCache(sqlCacheClass, "count", properties);
            CACHE_PAGESQL = CacheFactory.createCache(sqlCacheClass, "page", properties);
        }
    }
}
