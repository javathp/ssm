
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改户型 </title>
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
        <h1>返回</h1>
        <!--查询表单-->
        <p><a href="${ctx}/room/listOwenr">&lt; 查看套房列表</a></p>

    </div>

    <!--页面右侧-->
    <div class="main">
        <form class="form-horizontal" enctype="multipart/form-data"  action="${ctx}/type/edit" method="post" modelAttribute="type">
            <input type="hidden" name="_token" value="17nb09nROctqttKz9hcPg4gxNB0wCU8B21t744md">
            <input type="hidden" name="tId" value="${type.tId}"/>

            <div>
                <h5>
                    户型信息
                    <span class="pagination-total pull-right">
                    带 <span class="text-danger">*</span> 为必填项
                  </span>
                </h5>
            </div>


            <div>
                <table class="form-table">
                    <tbody>
                    <tr>
                        <td class="form-title">
                            <span class="text-danger">*</span>户型名称
                        </td>
                        <td>
                            <input type="text" class="form-control" name="tName" value="${type.tName}" placeholder="">
                        </td>
                    </tr>
                    <tr>
                        <td class="form-title">
                            <span class="text-danger">*</span>面积（平米）
                        </td>
                        <td>
                            <input type="text" class="form-control" name="tSpace" value="${type.tSpace}" placeholder="">
                        </td>
                    </tr>

                    <tr>
                        <td class="form-title">
                            备注
                        </td>
                        <td>
                            <textarea class="form-control" name="tBak">${type.tBak}</textarea>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>

            <!--保存按钮-->
            <div>
                <table class="table form-table">
                    <tbody>
                    <tr>
                        <td class="form-title"></td>
                        <td>
                            <button type="submit" class="btn btn-primary btn-lg btn-block">保存</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>

        </form>
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
        //下拉列表添加 chosen
        yoozi.chosen('.chosen');

    });
</script>
</body>
</html>
