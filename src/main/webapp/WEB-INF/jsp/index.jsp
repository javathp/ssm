
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="/common/head.jsp"%>
    <%@taglib prefix="t" uri="http://www.springframework.org/tags" %>
    <title><t:message code="lable.title"></t:message></title>
    <script language="javascript" type="text/javascript">
        <!--
        //获得当前时间,刻度为一千分一秒
        var initializationTime=(new Date()).getTime();
        function showLeftTime()
        {
            var now=new Date();
            var year=now.getYear()+1900;
            var month=now.getMonth()+1;
            var day=now.getDate();
            var hours=now.getHours();
            var minutes=now.getMinutes();
            var seconds=now.getSeconds();
            document.all.show.innerHTML=""+year+"年"+month+"月"+day+"日 "+hours+":"+minutes+":"+seconds+"";
//一秒刷新一次显示时间
            var timeID=setTimeout(showLeftTime,1000);
        }
        //-->
    </script>
</head>
<body onload="showLeftTime()">
     <hi><t:message code="lable.title"></t:message></hi>
     <div>
         <a href="${ctx}/i18n?locale=zh">zh</a>
         <a href="${ctx}/i18n?locale=en">en</a>
     </div>
     <li><a href="${ctx}/sys/book/toAdd"><t:message code="lable.msg1"></t:message></a></li>
     <li><a href="${ctx}/sys/book/toList"><t:message code="lable.msg2"></t:message></a></li><br>

     <div>
         <a href="${ctx}/sys/file/toUpload">文件上传</a>

     </div>
     <label id="show">显示时间的位置</label>

</body>
</html>
