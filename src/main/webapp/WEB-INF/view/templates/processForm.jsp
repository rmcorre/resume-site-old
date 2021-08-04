<%--
  Created by IntelliJ IDEA.
  User: Horacio
  Date: 8/7/2020
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="../header.jsp" %>

    <%-- these values are coming from the appended parameters in the get method --%>
    <h3>Values from the parameters appended to the url</h3>

    <p>First name: ${param.first_name}</p>
    <p>Last name: ${param.last_name}</p>
    <p>Email: ${param.email}</p>
    <p>Phone: ${param.phone}</p>
    <p>Title: ${param.title}</p>
    <p>Summary: ${param.summary}</p>

    <br>
    <br>

    <%-- these values are coming from the model --%>
    <h3>Values from the the model</h3>

    <p>First name: ${first_name}</p>
    <p>Last name: ${last_name}</p>
    <p>Email: ${email}</p>
    <p>Phone: ${phone}</p>
    <p>Title: ${title}</p>
    <p>Summary: ${summary}</p>

<%@ include file="../footer.jsp" %>

