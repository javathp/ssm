
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/common/head.jsp"%>
    <title>欢迎</title>
</head>
<body>
      <h1>书本添加</h1>
      <f:form action="${ctx}/sys/book/add" method="post" modelAttribute="bk">
          书名：<f:input path="bookName"></f:input><br>
          价格：<f:input path="bookPrice"></f:input><br>
          <f:select path="categoryId">
              <f:options items="${categoryIds}"></f:options>
          </f:select>
          <input type="submit" value="提交"/>

      </f:form>
</body>
</html>
