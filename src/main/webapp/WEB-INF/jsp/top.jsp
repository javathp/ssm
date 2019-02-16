
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>头部导航</title>

</head>
<body>

<!--头部主标题导航-->
<nav class="navbar navbar-inverse navbar-fixed-top ab">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#/backend/">
                物业管理系统
                <span class="badge">1.0</span>
            </a>
        </div>
        <div class="navbar-collapse collapse">
            <!--头部菜单-->
            <ul class="nav navbar-nav">
                <li><a href="${ctx}/control/toAdd">欠费管理</a></li>
                <li class="active" ><a href="${ctx}/room/toList">套房管理</a></li>
                <li><a href="${ctx}/cost/toList">收费管理</a></li>
                <li ><a href="${ctx}/owner/toList">业主管理</a></li>
            </ul>
            <!-- #头部菜单-->
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">Saturn</li>
                        <li><a href="#">退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- #头部主标题导航-->
<div class="list-container have-subhead"></div>

</body>
</html>
