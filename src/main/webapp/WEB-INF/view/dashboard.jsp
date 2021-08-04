<%@ include file="./urls.jsp" %>

<%@ include file="./header.jsp" %>
    <div class="container pt-5 mb-3">
        <div class="row">
            <div class="col">
                <h5 class="text-secondary">DASHBOARD</h5>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-4">
                <div class="card border-0">
                    <div class="card-header border-0 text-darkBlue bg-lightBlue">
                        Welcome Back!
                    </div>

                    <div class="card-body">
                        <h6>Active Portfolio</h6>
                        <h5>${activePortfolio.portfolioName}</h5>
                        <h6>${activeIdentity.firstName} ${activeIdentity.lastName}</h6>
<%--                        <button--%>
<%--                                class="btn btn-secondary btn-sm"--%>
<%--                                onclick="location.href='${index}'"--%>
<%--                                type="button">Back--%>
<%--                        </button>--%>
                        <button
                                class="btn btn-primary btn-sm"
                                onclick="location.href='${adminPortfolio}?portfolioId=${activePortfolio.id}'"
                                type="button">Admin
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@ include file="./footer.jsp" %>
