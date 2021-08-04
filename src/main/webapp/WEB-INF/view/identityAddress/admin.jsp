<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
<div class="container-fluid h-100">
    <div class="row pb-5">
        <div class="col">
            <h2>PROFILE ADDRESS</h2>
        </div>
    </div>
    <div class="row pb-1">
        <div class="col">
            <h3>${identity.firstName} ${identity.lastName}</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <table class="table table-sm table-bordered table-striped">
                <thead>
                    <tr>
                        <th scope="col">Building Number</th>
                        <th scope="col">Street</th>
                        <th scope="col">Parish/Town/City</th>
                        <th scope="col">State/Province</th>
                        <th scope="col">Region</th>
                        <th scope="col">Country</th>
                        <th scope="col">Postal Code</th>
                        <th scope="col">Current</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                <!-- loop over and print out identities -->
                <c:forEach var="identityAddress" items="${addressList}">

                    <!-- construct an "update" link with identity identityAddress id -->
                    <c:url var="updateLink" value="${updateProfileAddress}">
                        <c:param name="profileId" value="${identity.id}" />
                        <c:param name="addressId" value="${identityAddress.id}" />
                    </c:url>

                    <!-- construct a "delete" link with identity identityAddress id -->
                    <c:url var="deleteLink" value="${deleteIdentityAddress}">
                        <c:param name="profileId" value="${identity.id}" />
                        <c:param name="addressId" value="${identityAddress.id}" />
                    </c:url>

                    <tr>
                        <td>${identityAddress.buildingNumber}</td>
                        <td>${identityAddress.street}</td>
                        <td>${identityAddress.parishTownCity}</td>
                        <td>${identityAddress.stateProvince}</td>
                        <td>${identityAddress.region}</td>
                        <td>${identityAddress.country}</td>
                        <td>${identityAddress.postalCode}</td>
                        <td>${identityAddress.active}</td>
                        <td>
                           <!-- display the update link -->
                            <a href="${updateLink}" class="btn btn-sm btn-outline-secondary">Update</a>
                            <a href="${deleteLink}" class="btn btn-sm btn-outline-danger"
                                onclick="if (!(confirm('Are you sure you want to delete this identity identityAddress?'))) return false">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row pb-5">
        <div class="col">
            <button class="btn btn-secondary"
               onclick="location.href='${adminIdentity}'"
               type="button">Back
            </button>
            <button class="btn btn-primary"
               onclick="location.href='${createIdentityAddress}?profileId=${identity.id}'"
               type="button">Create
            </button>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
