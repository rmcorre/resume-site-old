<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ include file="../header.jsp" %>
<div class="container-fluid h-100">
    <div class="row">
        <div class="col pb-5">
            <h2>Portfolio Admin</h2>
        </div>
    </div>

    <div class="row pb-5">
        <div class="col">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/identity/createCandidate" type="button">Create Candidate</a>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Title</th>
                    <th scope="col">Summary</th>
                    <th scope="col">Active</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <!-- loop over and print out identities -->
                <c:forEach var="employer" items="${candidates}">

                    <!-- construct an "update" link with customer id -->
                    <c:url var="updateLink" value="/identity/showFormForUpdate">
                        <c:param name="customerId" value="${employer.id}" />
                    </c:url>

                    <c:url var="deleteLink" value="/identity/deleteCandidate">
                        <c:param name="customerId" value="${employer.id}" />
                    </c:url>

                    <tr>
                        <td>${employer.firstName}</td>
                        <td>${employer.lastName}</td>
                        <td>${employer.email}</td>
                        <td>${employer.phone}</td>
                        <td>${employer.title}</td>
                        <td>${employer.summary}</td>
                        <td>${employer.active}</td>
                        <td>
                           <!-- display the update link -->
                            <a href="${updateLink}" class="btn btn-sm btn-success">Update</a>
                            <a href="${deleteLink}" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
