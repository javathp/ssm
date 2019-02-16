
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>物业费缴纳</title>
    <%@include file="/common/head.jsp"%>
    <%@taglib prefix="t" uri="http://www.springframework.org/tags" %>
    <link href="${ctx}/assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/assets/vendors/distpicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet">
    <link href="${ctx}/assets/vendors/chosen/chosen.min.css" rel="stylesheet">
    <link href="${ctx}/assets/page.css" rel="stylesheet">
</head>
<body>
<div class="list">
    <div class="con">
        <div class="header">
            <div class="logo">
                <img src="${ctx}/assets/images/logo.jpg">
                <div class="title" >
                    <h2>仙桃世纪花城物业服务有限公司</h2>
                    <span class="icon">收款收据</span>
                    <span class="number">编号：001</span>
                </div>
            </div>
        </div>
        <table class="table" id="tab" >
            <tr >
                <td colspan=2 style="text-align: left; border-style: none;">客户姓名：</td>
                <td colspan=2 style="text-align: left; padding-left:40px;border-style: none;">房间名称：</td>
                <td colspan=2 style="border-style: none; text-align: right;"><span style="padding-right: 20px">年</span> <span style="padding-right: 20px">月</span>  <span>日</span></td>
            </tr>
            <tr >
                <td>项目</td>
                <td>周期</td>
                <td>缴费日期</td>
                <td>到期日期</td>
                <td>订单收入</td>
            </tr>

            <tr>
                <td>物业费</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan=5 style="text-align: left;border-bottom: 1px solid #ddd;">实际收款（大写）：</td>
            </tr>

            <tr>
                <td colspan=5 style="text-align: left;border-style: none;">付款说明：</td>
            </tr>

            <tr style="border-style: none;">
                <td colspan=2 style="text-align: left; border-style: none;border-bottom:1px solid #fff;padding-top:15px;">付款方式：</td>
                <td colspan=1 style="text-align: left;border-style: none;border-bottom:1px solid #fff;padding-top:15px;">开票人：</td>
                <td colspan=2 style="border-style: none; text-align:center;border-bottom:1px solid #fff;padding-top:15px;">客户确认（签名）：</td>
            </tr>
        </table>

    </div>
</div>
</body>
</html>
