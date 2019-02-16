
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>物业费标准列表 </title>
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

<div class="list-container have-subhead">
    <!--头部副标题导航-->
    <nav class="navbar navbar-fixed-top subhead">
        <div class="navbar-collapse collapse">
            <ul class="sub-list">
                <li class='bread'>
                    套房管理:
                </li>
                <li>
                    <a href="${ctx}/room/listOwenr">套房列表</a>
                </li>
                <li>
                    <a href="${ctx}/room/toAdd">添加套房</a>
                </li>
                <li role="separator" class="divider"></li>
                <li >
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
                <li class='active'>
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
            <h1>返回</h1>
            <!--查询表单-->
            <p><a href="${ctx}/room/listOwenr">&lt; 查看套房列表</a></p>

        </div>

        <!--页面右侧-->
        <div class="main">

            <!--列表头部-->
            <div>
                <h5>物业费标准管理</h5>
            </div>
            <!-- #列表头部-->

            <!--列表-->
            <div>
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th>收费标准</th>
                        <th>备注</th>
                        <th width="150">操作</th>
                    </tr>
                    </thead>
                    <tbody id="cost">

                    </tbody>
                </table>
            </div>
            <!-- #列表-->

        </div>
    </div>
</div>
<!-- /container -->

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

    $(function(){
        $.ajax({
            url:"${ctx}/fee/CosttoList",
            type:'post',
            success:function(data){
                var obj=eval(data);
                var a=null;
                for(var i=0; i<obj.length; i++){
                    //取出第一个json对象
                    var item = obj[i];
                    a +="<tr>"
                    +"<td>"+item.cName+"</td>"
                    +"<td>"+item.cStandard+"元/平米/年</td>"
                    +"<td>"+item.cBak+"</td>"
                    +"<td>"
                    +"<a href='${ctx}/fee/toLoad?cId="+item.cId+"' class='btn btn-xs btn-primary'><span class='glyphicon glyphicon-pencil'></span>"
                    +"编辑"
                    +"</a>"+"&nbsp;"
                    +"<a href='${ctx}/fee/toDel?cId="+item.cId+"' class='btn btn-xs btn-danger'><span class='glyphicon glyphicon-remove'></span>"
                    +"删除"
                    +"</a>"
                    +"</td>"
                    +"</tr>";
                }
                $("#cost").append(a);
            }
        });
    })
</script>
</body>
</html>
