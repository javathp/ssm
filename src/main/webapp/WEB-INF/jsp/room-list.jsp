<%--
  Created by IntelliJ IDEA.
  User: 2018120402
  Date: 2018/12/30
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>套房列表 </title>
    <%@include file="/common/head.jsp"%>
    <link href="${ctx}/assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/assets/vendors/distpicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet">
    <link href="${ctx}/assets/vendors/chosen/chosen.min.css" rel="stylesheet">
    <link href="${ctx}/assets/page.css" rel="stylesheet">
</head>
<body class="">
<!--[if lt IE 10]>
<div id="browser-warning" class="contextual bg-danger center navbar-fixed-top">
    <div class="container">
        <i class="glyphicon glyphicon-warning-sign"></i> 目前 物业管理系统不支持 IE 10 以下浏览器使用，请升级浏览器或更换浏览器。推荐使用 Chrome 浏览器。
    </div>
</div>
<![endif]-->

<!--头部主标题导航-->
<%@include file="top.jsp"%>

    <!--头部副标题导航-->
<nav class="navbar navbar-fixed-top subhead">
    <div class="navbar-collapse collapse">
        <ul class="sub-list">
            <li class='bread'>
                套房管理:
            </li>
            <li class='active'>
                <a href="${ctx}/room/listOwenr">套房列表</a>
            </li>
            <li>
                <a href="${ctx}/room/toAdd">添加套房</a>
            </li>
            <li role="separator" class="divider"></li>
            <li>
                <a href="${ctx}/house/toList">楼栋列表</a>
            </li>
            <li >
                <a href="${ctx}/house/toAdd">添加楼栋</a>
            </li>
            <li role="separator" class="divider"></li>
            <li>
                <a href="${ctx}/building/toList">单元列表</a>
            </li>
            <li>
                <a href="${ctx}/building/toAdd">添加单元</a>
            </li>
            <li role="separator" class="divider"></li>
            <li>
                <a href="${ctx}/type/toList">户型列表</a>
            </li>
            <li>
                <a href="${ctx}/type/toAdd">添加户型</a>
            </li>
            <li role="separator" class="divider"></li>
            <li>
                <a href="${ctx}/fee/toList">物业费标准列表</a>
            </li>
            <li>
                <a href="${ctx}/fee/toAdd">物业费标准管理</a>
            </li>
        </ul>
    </div>
</nav>
    <!-- #头部副标题导航-->
    <!--页面主体-->
    <div class="list-container have-subhead">
        <!--页面左侧-->
        <div class="sidebar">
            <h1>按条件查询</h1>
            <!--查询表单-->
            <form method="post" action="${ctx}/room/listOwenr">
                <div class="form-group">
                    <label>请选择楼栋</label>
                    <select class="form-control chosen" id="hName" name="hName">
                    </select>
                </div>
                <div class="form-group">
                    <label>请输入 业主姓名</label>
                    <input type="text" class="form-control" name="oName" value="" placeholder="">
                </div>
                <!--div class="form-group">
                  <label>注册时间</label>
                  <div class="input-group">
                    <input type="text" class="form-control datepicker" name="date[from]" value="" placeholder="0000-00-00">
                    <span class="input-group-addon">至</span>
                    <input type="text" class="form-control datepicker" name="date[to]" value="" placeholder="0000-00-00">
                  </div>
                </div-->
                <div class="form-group-btns">
                    <button type="submit" class="btn btn-sm btn-primary">筛选</button>
                    <button type="reset" class="btn btn-sm btn-default">重置</button>
                </div>
            </form>
        </div>
        <!--页面右侧-->
        <div class="main">
            <!--列表头部-->
            <div>
                <h5>
                    <!--列表的标题-->
                    套房列表
                    <!--迷你页码-->
                </h5>
            </div>
            <!-- #列表头部-->
            <!--列表-->
            <div>
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>楼栋号</th>
                        <th>单元房号</th>
                        <th>户型</th>
                        <th>物业费</th>
                        <th>业主姓名</th>
                        <th>联系电话</th>
                        <th>物业费到期时间</th>
                        <th>逾期时间</th>
                        <th width="150">操作</th>
                    </tr>
                    </thead>
                    <tbody id="owenrvo">
                    <c:forEach items="${owenrVos}" var="owenr">
                    <tr>
                        <td>${owenr.hName}</td>
                        <td>${owenr.oRoom}</td>
                        <td>${owenr.tName}</td>
                        <td>${owenr.fMoney}元/年</td>
                        <td>${owenr.oName}</td>
                        <td>${owenr.oTel}</td>
                        <td></td>
                        <td>天</td>
                        <td>
                            <a href="${ctx}/owner/toLoad" class="btn btn-xs btn-primary">
                                <span class="glyphicon glyphicon-pencil"></span>
                                更改
                            </a>
                            <a href="${ctx}/room/del?oId=${owenr.oId}" class="btn btn-xs btn-danger">
                                <span class="glyphicon glyphicon-remove"></span>
                                删除
                            </a>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- #列表-->
            <!--页码-->
            <z:page pageBean="${pageBean}"></z:page>
            <!-- #页码-->
        </div>
    </div>
</div>
<!-- /container -->
<!-- 添加备注弹出框 -->

                    <script src="${ctx}/assets/vendors/jquery-1.11.1.min.js"></script>
                    <script src="${ctx}/assets/vendors/bootstrap/bootstrap.min.js"></script>
                    <script src="${ctx}/assets/vendors/distpicker/bootstrap-datepicker.min.js"></script>
                    <script src="${ctx}/assets/vendors/distpicker/bootstrap-datepicker.zh-CN.min.js"></script>
                    <script src="${ctx}/assets/vendors/chosen/chosen.jquery.min.js"></script>
                    <script src="${ctx}/assets/vendors/lodash.min.js"></script>
                    <script src="${ctx}/assets/vendors/jquery.confirm.min.js"></script>
                    <script src="${ctx}/assets/yoozi.js"></script>
                    <script src="${ctx}/assets/common.js"></script>
                    <script type="text/javascript">
                        $(document).ready(function(){

                            //日期选择
                            yoozi.datapicker('.datepicker');

                        });

                        <%--$(function(){--%>
                            <%--$.ajax({--%>
                                <%--url:"${ctx}/room/listOwenr",--%>
                                <%--type:'post',--%>
                                <%--success:function(data){--%>
                                    <%--var obj=eval(data);--%>
                                    <%--var a=null;--%>
                                    <%--for(var i=0; i<obj.length; i++){--%>
                                        <%--//取出第一个json对象--%>
                                        <%--var item = obj[i];--%>
                                        <%--a += "<tr>"--%>
                                        <%--+"<td>"+item.hName+"</td>"--%>
                                        <%--+"<td>"+item.oRoom+"</td>"--%>
                                        <%--+"<td>"+item.tName+"</td>"--%>
                                        <%--+"<td>"+item.fMoney+"元/年</td>"--%>
                                        <%--+"<td>"+item.oName+"</td>"--%>
                                        <%--+"<td>"+item.oTel+"</td>"--%>
                                        <%--+"<td>"+item.FeeTime+"</td>"--%>
                                        <%--+"<td>"+item.OutTime+"天</td>"--%>
                                        <%--+"<td>"--%>
                                        <%--+"<a href='${ctx}/owner/toLoad' class='btn btn-xs btn-primary'><span class='glyphicon glyphicon-pencil'></span>"--%>
                                        <%--+"更改"--%>
                                        <%--+"</a>"+"&nbsp;"--%>
                                        <%--+"<a href='#' class='btn btn-xs btn-danger'><span class='glyphicon glyphicon-remove'></span>"--%>
                                        <%--+"删除"--%>
                                        <%--+"</a>"--%>
                                        <%--+"</td>"--%>
                                        <%--+"</tr>";--%>
                                    <%--}--%>
                                    <%--$("#owenrvo").append(a);--%>
                                <%--}--%>
                            <%--});--%>
                        <%--})--%>

                        $(function(){
                            $.ajax({
                                url:"${ctx}/house/HouestoList",
                                type:'post',
                                success:function(data){
                                    var obj=eval(data);
                                    var a=null;
                                    for(var i=0; i<obj.length; i++){
                                        //取出第一个json对象
                                        var item = obj[i];
                                        a += "<option value= '"+item.hName+"'>"+item.hName+"</option>";
                                    }
                                    $("#hName").append(a);
                                }
                            });
                        })
                    </script>
</body>
</html>
