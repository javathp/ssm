
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>物业费缴纳记录列表</title>
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
                收费管理:
            </li>
            <li >
                <a href="${ctx}/cost/toList">物业费账单</a>
            </li>
            <li class='active'>
                <a href="${ctx}/cost/toAdd">收取物业费</a>
            </li>

        </ul>

    </div>
</nav>
<!-- #头部副标题导航-->
<!--页面主体-->
<div  class="list-container have-subhead">

    <!--页面左侧-->
    <div class="sidebar">
        <h1>返回</h1>
        <!--查询表单-->
        <p><a href="cost-list.html
              ">&lt; 查看物业费账单列表</a></p>

    </div>

    <div class="main">

        <!--列表头部-->
        <div>
            <h5>
                <!--列表的标题-->
                物业费缴费记录
                <!--迷你页码-->
                <span class="pagination-total pull-right">
                    查询结果: 660 条记录，当前 1/66 页
                    <!--上一页-->
                    <a href="#" class="btn btn-xs btn-default">
                      <span class="glyphicon glyphicon glyphicon-menu-left"></span>
                    </a>
                    <!--下一页-->
                    <a href="#/backend/admin/user?page=2" class="btn btn-xs btn-default">
                      <span class="glyphicon glyphicon glyphicon-menu-right"></span>
                    </a>
                  </span>
            </h5>
        </div>
        <!-- #列表头部-->

        <!--列表-->
        <div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>缴费日期</th>
                    <th>收款人</th>
                    <th>付款方式</th>
                    <th>物业费期限</th>
                    <th>打印收据</th>

                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>2017-10-01</td>
                    <td>管理员A</td>
                    <td>现金</td>
                    <td>2017-10-01 至 2018-09-30</td>

                    <td><a target="_blank" href="shouju.html" class="btn btn-xs btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> 打印收据
                    </a>
                    </td>

                </tr>

                <tr>
                    <td>2017-10-01</td>
                    <td>管理员A</td>
                    <td>现金</td>
                    <td>2017-10-01 至 2018-09-30</td>

                    <td><a target="_blank" href="shouju.html" class="btn btn-xs btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> 打印收据
                    </a>
                    </td>

                </tr>

                <tr>
                    <td>2017-10-01</td>
                    <td>管理员A</td>
                    <td>现金</td>
                    <td>2017-10-01 至 2018-09-30</td>

                    <td><a target="_blank" href="shouju.html" class="btn btn-xs btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> 打印收据
                    </a>
                    </td>

                </tr>

                </tbody>
            </table>
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






    <!--页面右侧-->
    <!--物业费缴费记录-->
    <div role="tabpanel" class="tab-pane" >
        <h4>缴费记录列表</h4>


        <table class="table table-striped">
            <thead>
            <tr>
                <th>缴费日期</th>
                <th>收款人</th>
                <th>付款方式</th>
                <th>物业费期限</th>
                <th>打印收据</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>2016-09-14 14:59:30</td>
                <td>管理员A</td>
                <td>现金</td>
                <td>2016-10-01 至 2017-09-30</td>
                <td>
                    <a target="_blank" href="shouju.html" class="btn btn-xs btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> 打印收据
                    </a>
                </td>
            </tr>
            <tr>
                <td>2017-09-28 12:23:34</td>
                <td>微信号：世纪花城公众号</td>
                <td>微信转账（流水号：001293847567894836）</td>
                <td>2017-10-01 至 2018-09-30</td>
                <td>
                    <a target="_blank" href="shouju.html" class="btn btn-xs btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> 打印收据
                    </a>
                </td>
            </tr>

            <tr>
                <td>2016-09-14 14:59:30</td>
                <td>管理员A</td>
                <td>现金</td>
                <td>2016-10-01 至 2017-09-30</td>
                <td>
                    <a target="_blank" href="shouju.html" class="btn btn-xs btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> 打印收据
                    </a>
                </td>
            </tr>

            <tr>
                <td>2016-09-14 14:59:30</td>
                <td>管理员A</td>
                <td>现金</td>
                <td>2016-10-01 至 2017-09-30</td>
                <td>
                    <a target="_blank" href="shouju.html" class="btn btn-xs btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> 打印收据
                    </a>
                </td>
            </tr>

            <tr>
                <td>2016-09-14 14:59:30</td>
                <td>管理员A</td>
                <td>现金</td>
                <td>2016-10-01 至 2017-09-30</td>
                <td>
                    <a target="_blank" href="shouju.html" class="btn btn-xs btn-primary">
                        <span class="glyphicon glyphicon-pencil"></span> 打印收据
                    </a>
                </td>
            </tr>
            </tbody>
        </table>




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
