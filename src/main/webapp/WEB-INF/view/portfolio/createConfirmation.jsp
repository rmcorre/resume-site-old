<%@ include file="../urls.jsp" %>
<%@ include file="../header.jsp" %>

    <div class="container  pt-5 mb-3">
        <div class="row">
            <div class="col">
                <h5 class="text-secondary">PORTFOLIO CONFIRMATION</h5>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-3">
                <div class="card border-0">
                    <div class="card-header border-0 text-darkBlue bg-lightBlue">
                        <h5 class="d-inline-flex">Portfolio</h5>
                        <c:set var="active" value="${activeIdentity.active}" />
                        <c:if test="${active}">
                            <h6 class="d-inline-flex">Active</h6>
                        </c:if>
                    </div>

                    <div class="card-body">
                        <img src="../../../resources/img/portfolioAvatar100x100.png" class="card-img-top" style="width: 60px; height: auto;" alt="...">
                        <h5 class="card-title pt-3">${portfolio.portfolioName}</h5>
                        <ul class="list-unstyled">
                            <li>${activeIdentity.firstName} ${activeIdentity.lastName}</li>
                            <li>${currentAddress.parishTownCity}, ${currentAddress.countryRegion}</li>
                        </ul>
                        <button
                                class="btn btn-primary btn-sm"
                                onclick="location.href='${editPortfolio}?portfolioId=${portfolio.id}'"
                                type="button">Edit
                        </button>
                    </div>
                </div>
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
<%--                                <c:forEach var="inactivePortfolio" items="${inActivePortfolios}">--%>
<%--                                    <c:url var="editPortfolio" value="${editPortfolio}">--%>
<%--                                        <c:param name="inactivePortfolioId" value="${inactivePortfolio.id}" />--%>
<%--                                    </c:url>--%>
<%--                                    <div class="col-3">--%>
<%--                                        <div class="card border-0">--%>

<%--                                            <div class="card-body">--%>
<%--                                                <h6>${inactivePortfolio.portfolioName}</h6>--%>
<%--                                                <button--%>
<%--                                                        class="btn btn-primary btn-sm"--%>
<%--                                                        onclick="location.href='${editPortfolio}?portfolioId=${activePortfolio.id}'"--%>
<%--                                                        type="button">Edit--%>
<%--                                                </button>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--&lt;%&ndash;                                    <tr class="bg-white">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <td>${portfolio.portfolioName}</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <a href="${editLink}" class="btn btn-sm btn-outline-secondary">Edit</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </tr>&ndash;%&gt;--%>
<%--                                </c:forEach>--%>
<%--                                </tbody>--%>
<%--                            </table>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%@ include file="../footer.jsp" %>
