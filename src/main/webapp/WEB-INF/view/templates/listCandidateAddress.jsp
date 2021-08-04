<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="../header.jsp" %>

    <div class="row pb-5">
        <div class="col-2"></div>
        <div class="col-8">
            <h2>Candidate Address List</h2>
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
                        <th scope="col">Building Number</th>
                        <th scope="col">Street</th>
                        <th scope="col">Parish/Town/City</th>
                        <th scope="col">State/Province</th>
                        <th scope="col">Region</th>
                        <th scope="col">Country</th>
                        <th scope="col">Postal Code</th>
                        <th scope="col">Current</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="identityAddress" items="${candidateAddresses}">
                        <tr>
                            <td>${identityAddress.id}</td>
                            <td>${identityAddress.buildingNumber}</td>
                            <td>${identityAddress.street}</td>
                            <td>${identityAddress.parishTownCity}</td>
                            <td>${identityAddress.stateProvince}</td>
                            <td>${identityAddress.region}</td>
                            <td>${identityAddress.country}</td>
                            <td>${identityAddress.postalCode}</td>
                            <td>${identityAddress.current}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="col-2"></div>
    </div>

<%@ include file="../footer.jsp" %>
