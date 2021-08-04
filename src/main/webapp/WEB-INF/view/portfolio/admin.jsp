<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
    <div class="container  pt-5 mb-3">
        <div class="row">
            <div class="col">
                <h5 class="text-secondary">PORTFOLIO ADMIN</h5>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-3">
                <div class="card border-0">
                    <div class="card-header border-0 text-darkBlue bg-lightBlue">
                        Portfolio
                    </div>

                    <div class="card-body">
                        <h5 class="card-title">${activePortfolio.portfolioName}</h5>
                        <h6 class="card-subtitle">${activeIdentity.firstName} ${activeIdentity.lastName}</h6>
                        <div class="pt-3 mb-3">
                            <p class="card-text-sm text-muted">${activeIdentity.email}</p>
                            <p class="card-text-sm text-muted">${activeIdentity.phone}</p>
                        </div>
                        <button
                                class="btn btn-primary btn-sm"
                                onclick="location.href='${editPortfolio}?portfolioId=${activePortfolio.id}'"
                                type="button">Edit
                        </button>
                    </div>
                </div>
            </div>

<%--            <div class="col-8">--%>
<%--                <div class="card border-0">--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="card-title mb-4">Portfolio List</div>--%>
<%--                        <div class="table-responsive">--%>
<%--                            <table class="table table-centered table-nowrap mb-0">--%>
<%--                                <thead class="thead-light">--%>
<%--                                <tr>--%>
<%--                                    <th>Portfolio Name</th>--%>
<%--                                    <th>Identity Name</th>--%>
<%--                                    <th>Action</th>--%>
<%--                                </tr>--%>
<%--                                </thead>--%>
<%--                                <tbody>--%>
                                <c:forEach var="inactivePortfolio" items="${inActivePortfolios}">
                                    <c:url var="editPortfolio" value="${editPortfolio}">
                                        <c:param name="inactivePortfolioId" value="${inactivePortfolio.id}" />
                                    </c:url>
                                    <div class="col-3">
                                        <div class="card border-0">

                                            <div class="card-body">
                                                <h6>${inactivePortfolio.portfolioName}</h6>
                                                <button
                                                        class="btn btn-primary btn-sm"
                                                        onclick="location.href='${editPortfolio}?portfolioId=${activePortfolio.id}'"
                                                        type="button">Edit
                                                </button>
                                            </div>
                                        </div>
                                    </div>
<%--                                    <tr class="bg-white">--%>
<%--                                        <td>${portfolio.portfolioName}</td>--%>
<%--                                        <td>--%>
<%--                                            <a href="${editLink}" class="btn btn-sm btn-outline-secondary">Edit</a>--%>
<%--                                        </td>--%>
<%--                                    </tr>--%>
                                </c:forEach>
<%--                                </tbody>--%>
<%--                            </table>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%@ include file="../footer.jsp" %>
