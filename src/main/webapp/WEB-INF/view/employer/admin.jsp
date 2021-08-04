<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
    <div class="container pt-5 mb-5">
        <div class="row">
            <div class="col">
                <h3 class="text-secondary">Employer</h3>
                <div>
                    <h1 class="d-inline-block">${employer.employerName} - ${employer.id}</h1>
                    <button
                            class="btn btn-sm btn-outline-secondary mb-3"
                            onclick="location.href='${editEmployer}?employerId=${employer.id}'"
                            type="button">Edit
                    </button>
                </div>
                <p>${employer.position}</p>
                <p>${employer.startDate} - ${employer.endDate}</p>
                <p>${employer.summary}</p>
            </div>
        </div>

<%--        <div class="row">--%>
<%--            <div class="col-12">--%>
<%--                <table class="table table-sm table-bordered table-striped">--%>
<%--                    <thead>--%>
<%--                        <tr>--%>
<%--                            <th scope="col">Employer</th>--%>
<%--                            <th scope="col">Start Date</th>--%>
<%--                            <th scope="col">End Date</th>--%>
<%--                            <th scope="col">Position</th>--%>
<%--                            <th scope="col">Summary</th>--%>
<%--                            <th scope="col">Action</th>--%>
<%--                        </tr>--%>
<%--                    </thead>--%>
<%--                    <tbody>--%>
<%--                        <c:forEach var="employer" items="${employers}">--%>
<%--                            <c:url var="identityAddress" value="${adminEmployerAddress}">--%>
<%--                                <c:param name="employerId" value="${employer.id}" />--%>
<%--                            </c:url>--%>
<%--                            <c:url var="updateLink" value="${updateEmployer}">--%>
<%--                                <c:param name="employerId" value="${employer.id}" />--%>
<%--                            </c:url>--%>
<%--                            <c:url var="deleteLink" value="${deleteEmployer}">--%>
<%--                                <c:param name="employerId" value="${employer.id}" />--%>
<%--                            </c:url>--%>
<%--                            <tr>--%>
<%--                                <td>${employer.employerName}</td>--%>
<%--                                <td>${employer.startDate}</td>--%>
<%--                                <td>${employer.endDate}</td>--%>
<%--                                <td>${employer.position}</td>--%>
<%--                                <td>${employer.summary}</td>--%>
<%--                                <td>--%>
<%--                                    <a href="${identityAddress}" class="btn btn-sm btn-outline-secondary">Address</a>--%>
<%--                                    <a href="${updateLink}" class="btn btn-sm btn-outline-secondary">Update</a>--%>
<%--                                    <a href="${deleteLink}" class="btn btn-sm btn-outline-danger"--%>
<%--                                       onclick="if (!(confirm('Are you sure you want to delete this employer?'))) return false">Delete</a>--%>
<%--                                </td>--%>
<%--                            </tr>--%>
<%--                        </c:forEach>--%>
<%--                    </tbody>--%>
<%--                </table>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
    <div class="container">
        <div class="row">
            <div class="col">
                <h3 class="text-secondary">Addresses</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <table class="table table-sm table-bordered">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">Building Number</th>
                        <th scope="col">Street</th>
                        <th scope="col">Parish/Town/City</th>
                        <th scope="col">State/Province</th>
                        <th scope="col">Region</th>
                        <th scope="col">Country</th>
                        <th scope="col">PostalCode</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="address" items="${employerAddressList}">
                        <c:url var="editLink" value="${editEmployerAddress}">
                            <c:param name="employerId" value="${employer.id}" />
                            <c:param name="addressId" value="${address.id}" />
                        </c:url>
                        <c:url var="deleteLink" value="${deleteEmployerAddress}">
                            <c:param name="addressId" value="${address.id}" />
                        </c:url>

                        <tr class="bg-white">
                            <td>${address.buildingNumber}</td>
                            <td>${address.street}</td>
                            <td>${address.parishTownCity}</td>
                            <td>${address.stateProvince}</td>
                            <td>${address.region}</td>
                            <td>${address.country}</td>
                            <td>${address.postalCode}</td>
                            <td>
                                <a href="${editLink}" class="btn btn-sm btn-outline-secondary">Edit</a>
                                <a href="${deleteLink}" class="btn btn-sm btn-outline-danger"
                                   onclick="if (!(confirm('Are you sure you want to delete this identity?'))) return false">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row pb-1">
            <div class="col">
                <button class="btn btn-secondary"
                   onclick="location.href='${listIdentity}'"
                   type="button">Back
                </button>
                <button class="btn btn-primary"
                   onclick="location.href='${createEmployerAddress}?employerId=${employer.id}'"
                   type="button">Create Address
                </button>
            </div>
        </div>
    </div>
<%@ include file="../footer.jsp" %>
