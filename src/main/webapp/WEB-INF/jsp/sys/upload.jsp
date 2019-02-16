
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/common/head.jsp"%>
    <title>欢迎</title>
</head>
<body>
      <h1>图片上传</h1>
      <div>
          <c:if test="${null!=sessionScope.msg}">
              <h1>${msg}</h1>
              <c:remove var="msg" scope="session"></c:remove>
          </c:if>

              </div>
      <f:form action="${ctx}/sys/file/upload" method="post" modelAttribute="fileVo" enctype="multipart/form-data">
          <input type="file" name="img"/>
          <f:hidden path="bookId"></f:hidden>
          <input type="submit" value="上传"/>

      </f:form>
</body>
</html>
