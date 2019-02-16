package com.zking.ssm.github;

import com.github.pagehelper.Dialect;
import org.apache.ibatis.cache.CacheKey;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;

import java.util.Arrays;
import java.util.List;

public class ExecutorUtil {
    public static List pageQuery(Dialect dialect, Executor executor, MappedStatement ms, Object parameter, RowBounds rowBounds, ResultHandler resultHandler, BoundSql boundSql, CacheKey cacheKey) {

        return Arrays.asList();
    }

    public static MappedStatement getExistedMappedStatement(Configuration configuration, String countMsId) {

        return null;
    }

    public static Long executeManualCount(Executor executor, MappedStatement countMs, Object parameter, BoundSql boundSql, ResultHandler resultHandler) {

        return null;
    }

    public static Long executeAutoCount(Dialect dialect, Executor executor, MappedStatement countMs, Object parameter, BoundSql boundSql, RowBounds rowBounds, ResultHandler resultHandler) {

        return null;
    }
}
