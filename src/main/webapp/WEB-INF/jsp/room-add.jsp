
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加套房 </title>
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
            <li class='active'>
                <a href="${ctx}/room/toAdd">添加套房</a>
            </li>
            <li role="separator" class="divider"></li>
            <li >
                <a href="${ctx}/house/toList">楼栋列表</a>
            </li>
            <li>
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
            <form class="form-horizontal" action="${ctx}/room/add" method="post" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="17nb09nROctqttKz9hcPg4gxNB0wCU8B21t744md">
                <input type="hidden" name="id" value="0"/>
                <div>
                    <h5>
                        套房信息
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
                                <span class="text-danger">*</span>楼栋号
                            </td>
                            <td>
                                <select class="form-control chosen" id="hId" name="hId" >
                                    <option value="1">一栋</option>
                                    <option value="2">二栋</option>
                                    <option value="3">三栋</option>
                                    <option value="4">四栋</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-title">
                                <span class="text-danger">*</span>单元房号
                            </td>
                            <td>
                                <input type="text" class="form-control" name="oRoom" value="" placeholder="">
                            </td>
                        </tr>
                        <tr>
                            <td class="form-title">
                                <span class="text-danger">*</span>户型
                            </td>
                            <td>
                                <select class="form-control chosen" name="tId">
                                    <option value="1">三房两厅（119平米）</option>
                                    <option value="2">两房两厅（89平米）</option>
                                    <option value="3">四房两厅（139平米）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-title">
                                <span class="text-danger">*</span>物业费标准
                            </td>
                            <td>
                                <select class="form-control chosen" name="cId">
                                    <option value="1">洋房A（0.4元/平米/年）</option>
                                    <option value="1">洋房B（0.5元/平米/年）</option>
                                    <option value="2">联排别墅（0.6元/平米/年）</option>
                                    <option value="2">独栋别墅（0.7元/平米/年）</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-title">
                                户主姓名
                            </td>
                            <td>
                                <input type="text" class="form-control" name="oName" value="" placeholder="">
                            </td>
                        </tr>
                        <tr>
                            <td class="form-title">
                                联系方式
                            </td>
                            <td>
                                <input type="text" class="form-control" name="oTel" value="" placeholder="">
                            </td>
                        </tr>
                        <form>
                            <table class="form-table">
                                <tbody>
                                <tr>
                                    <td class="form-title">
                                        <span class="text-danger"></span>上传文件
                                    </td>
                                    <td>
                                        <input type="file" id="exampleInputFile" name="img">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="form-title">
                                        备注
                                    </td>
                                    <td>
                                        <input type="text" class="form-control" name="title" value="" placeholder="">
                                    </td>
                                </tr>
                                <%--<tr>--%>
                                    <%--<td class="form-title"></td>--%>
                                    <%--<td>--%>
                                        <%--<a href="#" class="btn btn-primary">保存</a>--%>
                                    <%--</td>--%>
                                <%--</tr>--%>
                                </tbody>
                            </table>
                        </form>
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

<!-- /container -->
<!-- <script src="./assets/vendors/jquery-1.10.2.min.js"></script> -->
<script src="${ctx}/assets/vendors/webuploader/jquery.js"></script>
<script src="${ctx}/assets/vendors/webuploader/webuploader.js"></script>
<script src="${ctx}/assets/vendors/webuploader/upload.js"></script>
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
                    a += "<option value= '"+item.hId+"'>"+item.hName+"</option>";
                }
                $("#hName").append(a);
            }
        });
    })
</script>

</body>
</html>
