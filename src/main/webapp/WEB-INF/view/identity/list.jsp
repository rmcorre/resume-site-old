<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
    <div class="container-fluid">
        <div class="row pt-5">

            <div class="col-3">
                <div class="mb-3">
                    <h3 class="text-secondary">Portfolios</h3>
                </div>
                <div>
                    <table class="table table-sm table-bordered">
                        <tbody>
                        <c:forEach var="portfolio" items="${portfolioList}">
                            <c:url var="adminLink" value="${adminPortfolio}">
                                <c:param name="portfolioId" value="${portfolio.id}" />
                            </c:url>

                            <tr>
                                <td class="align-middle">
                                        ${portfolio.portfolioName} - ${portfolio.id}
                                </td>
                                <td>
                                    <a href="${adminLink}" class="btn btn-sm btn-outline-secondary">Admin</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div>
                    <button
                            class="btn btn-secondary btn-sm"
                            onclick="location.href='${index}'"
                            type="button">Back
                    </button>
                    <button
                            class="btn btn-primary btn-sm"
                            onclick="location.href='${createPortfolio}'"
                            type="button">Create
                    </button>
                </div>
            </div>

            <div class="col-3">
                <div class="mb-3">
                    <h3 class="text-secondary">Profiles</h3>
                </div>
                <div>
                    <table class="table table-sm table-bordered">
                        <tbody>
                        <c:forEach var="identity" items="${identityList}">
                            <c:url var="adminLink" value="${adminIdentity}">
                                <c:param name="profileId" value="${identity.id}" />
                            </c:url>

                            <tr>
                                <td class="align-middle">
                                        ${identity.firstName} ${identity.lastName} - ${identity.id}
                                </td>
                                <td>
                                    <a href="${adminLink}" class="btn btn-sm btn-outline-secondary">Admin</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div>
                    <button
                            class="btn btn-secondary btn-sm"
                            onclick="location.href='${index}'"
                            type="button">Back
                    </button>
                    <button
                            class="btn btn-primary btn-sm"
                            onclick="location.href='${createIdentity}'"
                            type="button">Create
                    </button>
                </div>
            </div>

            <div class="col-3">
                <div class="mb-3">
                    <h3 class="text-secondary">Employers</h3>
                </div>
                <div>
                    <table class="table table-sm table-bordered">
                        <tbody>
                        <c:forEach var="employer" items="${employerList}">
                            <c:url var="adminLink" value="${adminEmployer}">
                                <c:param name="employerId" value="${employer.id}" />
                            </c:url>
                            <tr>
                                <td class="align-middle">
                                        ${employer.employerName} - ${employer.id}
                                </td>
                                <td>
                                    <a href="${adminLink}" class="btn btn-sm btn-outline-secondary">Admin</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div>
                    <button
                            class="btn btn-secondary btn-sm"
                            onclick="location.href='${index}'"
                            type="button">Back
                    </button>
                    <button
                            class="btn btn-primary btn-sm"
                            onclick="location.href='${createIdentity}'"
                            type="button">Create
                    </button>
                </div>
            </div>
        </div>
    </div>
<%@ include file="../footer.jsp" %>
