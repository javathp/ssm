
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>套房信息管理 </title>
    <%@include file="/common/head.jsp"%>
    <%@taglib prefix="t" uri="http://www.springframework.org/tags" %>
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
<<%@include file="top.jsp"%>

    <!--头部副标题导航-->
    <nav class="navbar navbar-fixed-top subhead">
        <div class="navbar-collapse collapse">
            <ul class="sub-list">
                <li class='bread'>
                    业主管理:
                </li>
                <li>
                    <a href="${ctx}/owner/toList">业主列表</a>
                </li>
                <li>
                    <a href="${ctx}/owner/toAdd">业主入住</a>
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
            <p><a href="${ctx}/owner/toList">&lt; 查看业主列表</a></p>
        </div>
        <!--页面右侧-->
        <div class="main">
            <div>
                <ul class="nav nav-tabs" role="tablist" id="ulbody">
                    <li role="presentation" class="active">
                        <a href="#base" aria-controls="base" role="tab" data-toggle="tab" >业主信息更改</a>
                    </li>
                    <li role="presentation">
                        <a href="#person" aria-controls="person" role="tab" data-toggle="tab" >相关文件</a>
                    </li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!--套房信息-->
                    <div role="tabpanel" class="tab-pane active " id="base" >
                        <br />
                        <form class="form-horizontal" enctype="multipart/form-data"  action="#/backend/admin/product" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <table class="table table-striped">
                                        <thead>
                                        <tr>
                                            <th>业主姓名</th>
                                            <th>联系电话</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td><input type="text" class="form-control" name="" value="张三"></td>
                                            <td><input type="text" class="form-control" name="" value="联系电话" ></td>
                                            <td>
                                                <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">  <span class="glyphicon glyphicon-pencil"></span>修改</a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!--业主信息-->
                    <div role="tabpanel" class="tab-pane " id="person" >
                        <br />
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>文件</th>
                                <th>备注</th>
                                <th>上传时间</th>
                                <th width="100">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><a href="#">房产证.jpg</a></td>
                                <td>已经办理房产证</td>
                                <td>2016-07-09 12:34:27</td>
                                <td>
                                    <a href="#" class="btn btn-xs btn-danger"><span class="glyphicon glyphicon-remove"></span>删除</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <!--页码-->
                        <nav class="pull-right">
                            <ul class="pagination pagination-sm">
                                <ul class="pagination">
                                    <li class="disabled"><span>&laquo;</span></li>
                                    <li class="active"><span>1</span></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">6</a></li>
                                    <li><a href="#">7</a></li>
                                    <li><a href="#">8</a></li>
                                    <li class="disabled"><span>...</span></li>
                                    <li><a href="#">65</a></li>
                                    <li><a href="#">66</a></li>
                                    <li><a href="#" rel="next">&raquo;</a></li>
                                </ul>
                            </ul>
                        </nav>
                        <!-- #页码-->
                        <br />
                        <h5>添加文件</h5>
                        <div>
                            <form>
                                <table class="form-table">
                                    <tbody>
                                    <tr>
                                        <td class="form-title">
                                            <span class="text-danger">*</span>上传文件
                                        </td>
                                        <td>
                                            <input type="file" id="exampleInputFile">
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
                                    <tr>
                                        <td class="form-title"></td>
                                        <td>
                                            <a href="#" class="btn btn-primary">保存</a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </form>
                        </div>


                    </div>

                    <!--相关文件-->
                    <div role="tabpanel" class="tab-pane" id="file" >
                        <br />

                    </div>
                </div>
            </div>
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
<script type="text/javascript">
    $(function() {
        $.getUrlParam = function(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if(r != null) return unescape(r[2]);
            return null;
        }
        var url_status = $.getUrlParam('process');
        if(url_status == 1) {
            $('#base').click();
        } else if(url_status == 2) {
            $('#time').click();
        } else if(url_status == 3) {
            $('#jiaofei').click();
        }
    });
</script>
<%--<script>
      $(function () {
          $('#ulbody li:eq(0) a').tab('show'); //初始化显示第三个tab
          $('#ulbody a:last').tab('show');//初始化显示最后一个tab
        $('#ulbody a').click(function (e) {
          e.preventDefault();//阻止a链接的跳转行为
          $(this).tab('show');//显示当前选中的链接及关联的content
        })
      })
    </script>--%>




</body>
</html>
