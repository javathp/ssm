
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/common/head.jsp"%>
</head>
<body>
<h1>书本详细</h1>
<f:form action="${ctx}/sys/book/list" method="post" modelAttribute="loads">
    ID:<f:input path="bookId"></f:input><br>
    书名：<f:input path="bookName"></f:input><br>
    价格：<f:input path="bookPrice"></f:input><br>
    <input type="submit" value="返回"/>

</f:form>
</body>
</html>
