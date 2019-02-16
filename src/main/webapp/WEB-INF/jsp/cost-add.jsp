
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>收费管理 </title>
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
<nav class="navbar navbar-fixed-top subhead ab">
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
        <ul class="sub-btns">
            <li>
                <a href="#" class="btn btn-sm btn-default">
                    <span class="glyphicon glyphicon-list-alt"></span>
                    导出 excel 表
                </a>
            </li>
        </ul>
    </div>
</nav>
<!-- #头部副标题导航-->
<!--页面主体-->
<div  class="list-container have-subhead ab">

    <!--页面左侧-->
    <div class="sidebar">
        <h1>按条件查询</h1>
        <!--查询表单-->
        <form method="get">
            <div class="form-group">
                <label>请选择楼栋</label>
                <select class="form-control chosen" name="status">
                    <option value="1">一栋</option>
                    <option value="2">二栋</option>
                    <option value="3">三栋</option>
                </select>
            </div>
            <div class="form-group">
                <label>请输入 单元房号/业主姓名/电话号码</label>
                <input type="text" class="form-control" name="word" value="" placeholder="">


            </div>

            <div class="form-group-btns">
                <button type="submit" class="btn btn-sm btn-primary">查询</button>
                <a href="#" class="btn btn-sm btn-default">重置</a>
            </div>
        </form>

    </div>

    <!--页面右侧-->
    <div class="main">

        <!--列表头部-->
        <div>
            <h5>
                <!--列表的标题-->
                应交的物业费明细
                <!--迷你页码-->

            </h5>
        </div>
        <!-- #列表头部-->

        <!--列表-->
        <div>
            <!-- #列表头部-->
            <table class="form-table">
                <tbody>

                <tr>
                    <td class="form-title">
                        <span class="text-danger">*</span>楼栋号
                    </td>
                    <td>一栋</td>
                </tr>


                <tr>
                    <td class="form-title">
                        <span class="text-danger">*</span>单元房号
                    </td>
                    <td>三单元401</td>
                </tr>

                <tr>
                    <td class="form-title">
                        户主姓名
                    </td>
                    <td>
                        张三
                    </td>
                </tr>

                <tr>
                    <td class="form-title">
                        户型
                    </td>
                    <td>
                        三房两厅（119平米）
                    </td>
                </tr>
                <tr>
                    <td class="form-title">
                        标准物业费
                    </td>
                    <td>
                        47.6元/年
                    </td>
                </tr>
                <tr>
                    <td class="form-title">
                        往年欠费
                    </td>
                    <td>
                        ￥0
                    </td>
                </tr>
                <tr>
                    <td class="form-title">
                        滞纳金
                    </td>
                    <td>
                        ￥0
                    </td>
                </tr>
                <tr>
                    <td class="form-title">
                        <span class="text-danger">*</span>缴费周期
                    </td>
                    <td>
                        <select class="form-control chosen" name="status">
                            <option value="1">一年</option>
                            <option value="2">两年</option>
                            <option value="3">三年</option>
                            <option value="4">四年</option>
                            <option value="5">五年</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td class="form-title">合计应交金额</td>
                    <td>
                        47.6元/年（[往年欠费]+[滞纳金]+[物业费标准]*「缴费周期」，系统会自动计算该楼层的物业费用）
                    </td>
                </tr>

                <tr>
                    <td class="form-title">
                        <span class="text-danger">*</span>缴纳方式
                    </td>
                    <td>
                        <select class="form-control chosen" name="status">
                            <option value="1">现金</option>
                            <option value="1">支付宝</option>
                            <option value="2">微信</option>
                            <option value="2">银行卡</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="form-title">
                        收款说明
                    </td>
                    <td>
                        <textarea class="form-control" name="title"></textarea>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        </form>
        <table class="table form-table">
            <tbody>
            <tr>

                <td align="center">
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target=".bs-example-modal-sm">确认</button>
                    <div class="modal  bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                        <div class="modal-dialog modal-sm" role="document">

                            <div class="modal-content">
                                <h3>缴费成功</h3>
                                <div class="fee">
                                    <a target="_blank"  href='shouju.html'> <button type="submit"  class="btn btn-primary btn-sm " >打印收据</button> </a>
                                    <button type="button"  class="btn btn-primary btn-sm" data-dismiss="modal">返回</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--  <a href='cost-fee-list.html'> <button type="submit"  class="btn btn-primary btn-lg ">收款</button> </a> -->
                    <button type="button" class="btn btn-primary btn-lg" data-dismiss="modal">取消</button>
                    <div id="fade" ></div>


                </td>
            </tr>
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
</script>
<!-- <script type="text/javascript">
    function ulrHtml(num){
                var toUrl = "room-edit.html?"+num;
        window.open(toUrl);
   }
</script> -->
</body>
</html>
