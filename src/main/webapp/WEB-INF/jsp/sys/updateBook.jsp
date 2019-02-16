
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/common/head.jsp"%>
    <title>欢迎</title>
</head>
<body>
      <h1>书本修改</h1>
      <f:form action="${ctx}/sys/book/toUpdate" method="post" modelAttribute="load">
          ID:<f:input path="bookId"></f:input><br>
          书名：<f:input path="bookName"></f:input><br>
          价格：<f:input path="bookPrice"></f:input><br>
          <input type="submit" value="修改"/>
          <a:></a:>

      </f:form>
</body>
</html>
