<%@ include file="./urls.jsp" %>
<%@ include file="./header.jsp" %>

<div class="container-fluid pt-2 mb-3">
    <div class="row">
        <div class="col">
            <h5 class="text-secondary">PORTFOLIO WIZARD</h5>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col-1">
            <div class="list-group list-group-flush">
<%--                <a--%>
<%--                        class="list-group-item list-group-item-action active"--%>
<%--                        href="${createPortfolio}"--%>
<%--                        target="iframe"--%>
<%--                    >1. Portfolio--%>
<%--                </a>--%>
                <a
                        class="list-group-item list-group-item-action bg-light"
                        href="${createIdentity}"
                        target="iframe"
                        ><i class="fas fa-address-card fa-2x"></i>
                </a>
                <a
                        class="list-group-item list-group-item-action bg-light pl-4"
                        href="${createEducation}"
                        target="iframe"
                        ><i class="fas fa-user-graduate fa-2x"></i>
                </a>
                <a
                        class="list-group-item list-group-item-action bg-light"
                        href="${createEmployer}"
                        target="iframe"
                        ><i class="fas fa-id-card-alt fa-2x"></i>
                </a>
<%--                <a--%>
<%--                        class="list-group-item list-group-item-action"--%>
<%--                        href="${createIndustry}"--%>
<%--                        target="iframe"--%>
<%--                    >5. Industry--%>
                </a>
                <a
                        class="list-group-item list-group-item-action bg-light"
                        href="${createSkill}"
                        target="iframe"
                        ><i class="fas fa-tasks fa-2x"></i>
                </a>
                <a
                        class="list-group-item list-group-item-action bg-light"
                        href="${createPortfolio}"
                        target="iframe"
                        ><i class="fas fa-suitcase fa-2x"></i>
                </a>
            </div>
        </div>
        <iframe name="iframe" class="col-9" style="border:none; height:500px;">

        </iframe>
    </div>
</div>
<%@ include file="./footer.jsp" %>
