
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欠费统计</title>
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
<%@include file="top.jsp"%>

<!--头部副标题导航-->
<nav class="navbar navbar-fixed-top subhead">
    <div class="navbar-collapse collapse">
        <ul class="sub-list">
            <li class='bread'>
                物业费逾期管理:
            </li>
            <li class='active'>
                <a href="${ctx}/control/toLoad">欠费概况</a>
            </li>
            <li >
                <a href="${ctx}/control/toAdd">已逾期用户列表</a>

            </li>
            <li >
                <a href="${ctx}/control/toList">七天内到期的用户列表</a>
            </li>
        </ul>

    </div>
</nav>
<!-- #头部副标题导航-->
<!--页面主体-->
<div  class="list-container have-subhead">

    <!--页面左侧-->
    <div class="sidebar">
        <h1>查看</h1>
        <!--查询表单-->
        <p><a href="${ctx}/control/toLoad">&lt; 查看已逾期用户</a></p>
    </div>
    <!--页面右侧-->
    <div  class="main">

        <!--列表头部-->
        <div class="row">
            <div class="panel-heading panel">
                <div class=" panel-default" >
                    <h4>
                        <!--列表的标题-->
                        欠费概况
                    </h4>
                </div>
            </div>
        </div>
        <!-- #列表头部-->
        <!--列表-->
        <div>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                    <div class="info-box blue-bg">
                    <h4>已逾期用户数</h4>
                    <div class="count">6</div>
                </div><!--/.info-box-->
            </div><!--/.col-->
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box blue-bg">
                    <h4>七天内物业费到期用户数</h4>
                    <div class="count">7</div>

                </div><!--/.info-box-->
            </div><!--/.col-->

            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box blue-bg">
                    <h4>所欠的物业费总金额</h4>
                    <div class="count">￥2000（已逾期用户所欠物业费总和）</div>
                </div><!--/.info-box-->
            </div><!--/.col-->

            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box blue-bg">
                    <h4>总计</h4>
                    <div class="count">￥2000（所欠物业费总金额+滞纳金总和）</div>

                </div><!--/.info-box-->
            </div><!--/.col-->
        </div><!--/.row-->
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>物业费欠费详情列表</h4>
                </div>
                <div class="panel-body">
                    <table class="table bootstrap-datatable countries">
                        <thead>
                        <tr>
                            <th>楼栋号</th>
                            <th>入住总户数</th>
                            <th>已交费用户数</th>
                            <th>逾期用户数</th>
                            <th>缴费百分比</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>

                            <td>一栋</td>
                            <td>300</td>
                            <td>290</td>
                            <td>10</td>
                            <td>
                                <div class="progress px">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 97%;">
                                        97%
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>

                            <td>二栋</td>
                            <td>365</td>
                            <td>365</td>
                            <td>0</td>
                            <td>
                                <div class="progress px">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
                                        100%
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>

                            <td>三栋</td>
                            <td>210</td>
                            <td>200</td>
                            <td>10</td>
                            <td>
                                <div class="progress px">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                                        90%
                                    </div>
                                </div>
                            </td>
                        </tr>

                        <tr>

                            <td>四栋</td>
                            <td>210</td>
                            <td>200</td>
                            <td>10</td>
                            <td>
                                <div class="progress px">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                                        90%
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>

                            <td>五栋</td>
                            <td>210</td>
                            <td>200</td>
                            <td>10</td>
                            <td>
                                <div class="progress px">
                                    <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                                        90%
                                    </div>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>



            </div><!--/col-->


        </div>
        <!-- #列表-->
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



    </div>
</div>
</div>
<!-- /container -->
<!--  <script type="text/javascript">
      function ulrHtml(num){
                  var toUrl = "room-edit.html?"+num;
          window.open(toUrl);
     }
</script> -->

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
</script>
</body>
</html>
