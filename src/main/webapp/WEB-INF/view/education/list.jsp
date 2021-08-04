<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="../header.jsp" %>
<div class="container-fluid h-100">
    <div class="row pb-5">
        <div class="col-2"></div>
        <div class="col-8">
            <h2>Education list</h2>
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
                        <th scope="col">Institution</th>
                        <th scope="col">Course</th>
                        <th scope="col">Start Date</th>
                        <th scope="col">End Date</th>
                        <th scope="col">Portfolio Id</th>
                    </tr>
                </thead>

                <tbody>
                <c:forEach var="education" items="${educationList}">
                    <tr>
                        <td>${education.id}</td>
                        <td>${education.institution}</td>
                        <td>${education.course}</td>
                        <td>${education.startDate}</td>
                        <td>${education.endDate}</td>
                        <td>${education.field}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-2"></div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
