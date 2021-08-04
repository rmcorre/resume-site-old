<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../header.jsp" %>

    <p>
        First Name: ${identity.firstName} <br>
        Last Name: ${identity.lastName} <br>
        Email: ${identity.email} <br>
        Phone: ${identity.phone} <br>
        Title: ${identity.title} <br>
        Summary: ${identity.summary} <br>
        Active: ${identity.active} <br>
    </p>

<%@ include file="../footer.jsp" %>

