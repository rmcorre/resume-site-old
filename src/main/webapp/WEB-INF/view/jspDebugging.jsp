<%--
  Created by IntelliJ IDEA.
  User: rmcor
  Date: 21/09/2020
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!-- use this snippet to debug context path -->
    <div>
        Page Context: <c:out value="${pageContext.request.contextPath}" /> <br>
        Request Context Path: <%= request.getContextPath() %> <br>
        Request URI:          <%= request.getRequestURI() %> <br>
        Request URL:          <%= request.getRequestURL() %>
    </div>

</body>
</html>
