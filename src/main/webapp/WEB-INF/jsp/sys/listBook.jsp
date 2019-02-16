
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/common/head.jsp"%>
    <title>欢迎</title>
</head>
<body>
      <h1>书本查询</h1>
      <f:form action="${ctx}/sys/book/list" method="post" modelAttribute="bk">
          书名：<f:input path="bookName"></f:input><br>

          <input type="submit" value="查询"/>

      </f:form>

      <table width="100%" border="1">
          <tr>
              <td>ID</td>
              <td>书名</td>
              <td>价格</td>
              <td>操作</td>
          </tr>
          <c:forEach var="v" items="${listBook}">
              <tr>
                  <td>${v.bookId}</td>
                  <td>${v.bookName}</td>
                  <td><fmt:formatNumber value="${v.bookPrice}" type="currency"/></td>
                  <td><a href="${ctx}/sys/book/toDel?bookId=${v.bookId}">删除</a>&nbsp;<a href="${ctx}/sys/book/toLoad?bookId=${v.bookId}">修改</a>&nbsp;
                      <a href="${ctx}/sys/book/toAdd">添加</a>&nbsp;<a href="${ctx}/sys/book/Load?bookId=${v.bookId}">详细</a>&nbsp;
                      <a href="${ctx}/sys/file/toUpload">文件上传</a>
                  </td>
              </tr>

          </c:forEach>


      </table>
</body>
</html>
