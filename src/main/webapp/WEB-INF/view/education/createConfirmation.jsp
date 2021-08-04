<%@ include file="../urls.jsp" %>
<%@ include file="../header.jsp" %>

<div class="container">
    <div class="row">
        <div class="col">
            <h3 class="text-secondary">Education</h3>
            <div>
                <h1>${education.id}</h1>
                <h1 class="d-inline-block">${education.institution}</h1>
                <table class="table table-borderless table-sm">
                    <tbody>
                        <tr>
                            <td class="table-light">Course: </td>
                            <td class="table-light">${education.course}</td>
                        </tr>
                        <tr>
                            <td class="table-light">Start Date: </td>
                            <td class="table-light">${education.startDate}</td>
                        </tr>
                        <tr>
                            <td class="table-light">End Date: </td>
                            <td class="table-light">${education.endDate}</td>
                        </tr>
                        <tr>
                            <td class="table-light">Street:</td>
                            <td class="table-light">${education.address}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<%--<div class="container">--%>
<%--    <div class="row">--%>
<%--        <div class="col">--%>
<%--            <h3 class="text-secondary">Addresses</h3>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-12">--%>
<%--            <table class="table table-sm table-bordered">--%>
<%--                <thead class="thead-dark">--%>
<%--                <tr>--%>
<%--                    <th scope="col">Building Number</th>--%>
<%--                    <th scope="col">Street</th>--%>
<%--                    <th scope="col">Parish/Town/City</th>--%>
<%--                    <th scope="col">State/Province</th>--%>
<%--                    <th scope="col">Region</th>--%>
<%--                    <th scope="col">Country</th>--%>
<%--                    <th scope="col">PostalCode</th>--%>
<%--                    <th scope="col">Action</th>--%>
<%--                </tr>--%>
<%--                </thead>--%>
<%--                <tbody>--%>
<%--                <c:forEach var="address" items="${profileAddressList}">--%>
<%--                    <c:url var="editLink" value="${editIdentityAddress}">--%>
<%--                        <c:param name="profileId" value="${identity.id}" />--%>
<%--                        <c:param name="addressId" value="${address.id}" />--%>
<%--                    </c:url>--%>
<%--                    <c:url var="deleteLink" value="${deleteIdentityAddress}">--%>
<%--                        <c:param name="addressId" value="${address.id}" />--%>
<%--                    </c:url>--%>

<%--                    <tr class="bg-white">--%>
<%--                        <td>${address.buildingNumber}</td>--%>
<%--                        <td>${address.street}</td>--%>
<%--                        <td>${address.parishTownCity}</td>--%>
<%--                        <td>${address.stateProvince}</td>--%>
<%--                        <td>${address.region}</td>--%>
<%--                        <td>${address.country}</td>--%>
<%--                        <td>${address.postalCode}</td>--%>
<%--                        <td>--%>
<%--                            <a href="${editLink}" class="btn btn-sm btn-outline-secondary">Edit</a>--%>
<%--                            <a href="${deleteLink}" class="btn btn-sm btn-outline-danger"--%>
<%--                               onclick="if (!(confirm('Are you sure you want to delete this identity?'))) return false">Delete</a>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </c:forEach>--%>
<%--                </tbody>--%>
<%--            </table>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col">--%>
<%--            <button--%>
<%--                    class="btn btn-secondary"--%>
<%--                    onclick="location.href='${listIdentity}'"--%>
<%--                    type="button">Back--%>
<%--            </button>--%>
<%--            <button--%>
<%--                    class="btn btn-primary"--%>
<%--                    onclick="location.href='${createIdentityAddress}?profileId=${identity.id}'"--%>
<%--                    type="button">Create Address--%>
<%--            </button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%@ include file="../footer.jsp" %>


