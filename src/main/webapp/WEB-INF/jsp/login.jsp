
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> 后台登录 </title>
    <%@include file="/common/head.jsp"%>
    <%@taglib prefix="t" uri="http://www.springframework.org/tags" %>
    <link href="${ctx}/assets/vendors/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/assets/vendors/distpicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet">
    <link href="${ctx}/assets/vendors/chosen/chosen.min.css" rel="stylesheet">
    <link href="${ctx}/assets/page.css" rel="stylesheet">
</head>
<body class="sign-page">

<!--[if lt IE 10]>
<div id="browser-warning" class="contextual bg-danger center navbar-fixed-top">
    <div class="container">
        <i class="glyphicon glyphicon-warning-sign"></i> 目前 物业管理系统不支持 IE 10 以下浏览器使用，请升级浏览器或更换浏览器。推荐使用 Chrome 浏览器。
    </div>
</div>
<![endif]-->
<div class="container">

    <form class="form-signin" method="post">
        <input type="hidden" name="_token" value="17nb09nROctqttKz9hcPg4gxNB0wCU8B21t744md"/>

        <h2 class="form-signin-heading">物业管理系统</h2>

        <div class="alert alert-danger alert-dismissible fade in" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
            用户名或密码错误
        </div>

        <label for="inputEmail" class="sr-only">Email</label>
        <input type="text" id="inputEmail" class="form-control" name="email" placeholder="用户名或邮箱" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
        <!--div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住密码
          </label>
        </div-->
    </form>

</div> <!-- /container -->
</body>
</html>
