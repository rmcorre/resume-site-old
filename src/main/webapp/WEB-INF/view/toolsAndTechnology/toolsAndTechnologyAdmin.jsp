<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="../header.jsp" %>
<div class="container-fluid h-100">
    <div class="row">
        <div class="col">
            <h2>TOOLS AND TECHNOLOGY ADMIN</h2>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <table class="table table-sm table-bordered table-striped">
                <thead>
                <tr>
                    <th scope="col">Domain</th>
                    <th scope="col">Skill</th>
                    <th scope="col">Skill Category</th>
                    <th scope="col">Tool</th>
                    <th scope="col">Technology</th>
                    <th scope="col">Active</th>
                </tr>
                </thead>
                <tbody>
                    <!-- loop over and print out identities
                         identities is the model attribute added in the controller-->
                    <c:forEach var="toolsAndTechnology" items="${toolsAndTechnologyList}">

                        <!-- construct an "update" link with customer id -->
        <%--                <c:url var="updateLink" value="/identity/updateCandidate">--%>
        <%--                    <c:param name="candidateId" value="${tempCandidate.id}" />--%>
        <%--                </c:url>--%>

                        <!-- construct a "delete" link with customer id -->
        <%--                <c:url var="deleteLink" value="/identity/deleteCandidate">--%>
        <%--                    <c:param name="candidateId" value="${tempCandidate.id}" />--%>
        <%--                </c:url>--%>

                        <tr>
                            <td>${toolsAndTechnology.domain}</td>
                            <td>${toolsAndTechnology.skill}</td>
                            <td>${toolsAndTechnology.skillCategory}</td>
                            <td>${toolsAndTechnology.tool}</td>
                            <td>${toolsAndTechnology.technology}</td>
                            <td>${toolsAndTechnology.active}</td>
        <%--                    <td>--%>
        <%--                        <!-- display the update link -->--%>
        <%--                        <a href="${addressLink}" class="btn btn-sm btn-outline-secondary">IdentityAddress</a>--%>
        <%--                        <a href="${updateLink}" class="btn btn-sm btn-outline-secondary">Update</a>--%>
        <%--                        <a href="${deleteLink}" class="btn btn-sm btn-outline-danger"--%>
        <%--                           onclick="if (!(confirm('Are you sure you want to delete this identity?'))) return false">Delete</a>--%>
        <%--                    </td>--%>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row pb-1">
        <div class="col">
            <a class="btn btn-secondary"
               href="${pageContext.request.contextPath}/"
               type="button">Back
            </a>
            <a class="btn btn-primary"
               href="${pageContext.request.contextPath}/toolsAndTechnology/toolsAndTechnologyCreate"
               type="button">Create
            </a>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>


