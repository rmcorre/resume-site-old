<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../header.jsp" %>

    <div class="row pb-5">
        <div class="col-2"></div>
        <div class="col-8">
            <h2>Candidate List</h2>
        </div>
        <div class="col-2"></div>
    </div>

    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Title</th>
                        <th scope="col">Summary</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- loop over and print out identities -->
                    <c:forEach var="employer" items="${candidates}">
                        <tr>
                            <td>${employer.id}</td>
                            <td>${employer.firstName}</td>
                            <td>${employer.lastName}</td>
                            <td>${employer.email}</td>
                            <td>${employer.phone}</td>
                            <td>${employer.title}</td>
                            <td>${employer.summary}</td>
                        </tr>
                    </c:forEach>
                </tbody>

            </table>
        </div>
        <div class="col-2"></div>
    </div>

<%@ include file="../footer.jsp" %>
