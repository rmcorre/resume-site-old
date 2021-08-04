<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp" %>
<%@ include file="../header.jsp" %>

    <div class="container pt-0">
        <div class="row">
            <div class="col pb-3">
                <h3 class="text-secondary">Create Portfolio</h3>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <form:form
                        action="${processPortfolio}"
                        modelAttribute="portfolioDTO"
                        method="post">

<%--                    <form:hidden path="id" />--%>

                    <div class="form">
                        <div class="row">
                            <div class="form-group col-4">
                                <label for="identity">Identity</label>
                                <form:select
                                        class="form-control"
                                        path="identity"
                                        items="${identityMap}"
                                        aria-describedby="identityHelp"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-4">
                                <label for="category">Category</label>
                                <form:input
                                        class="form-control"
                                        path="category"
                                        aria-describedby="categoryHelp"
                                />
                            </div>
                            <div class="form-group col-4">
                                <label for="portfolioName">Portfolio Name</label>
                                <form:input
                                        class="form-control"
                                        path="portfolioName"
                                        aria-describedby="portfolioNameHelp"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-8">
                                <label for="summary">Summary</label>
                                <form:textarea
                                        class="form-control"
                                        path="summary"
                                        aria-describedby="summaryHelp"
                                        rows="3"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-8">
                                <label class="mr-3">Active:</label>
                                <div class="form-check form-check-inline align-top">
                                    <form:radiobutton
                                            path="active"
                                            class="form-check-input"
                                            id="inlineRadioTrue"
                                            value="true"
                                    />
                                    <label class="form-check-label" for="inlineRadioTrue">True</label>
                                </div>
                                <div class="form-check form-check-inline align-top">
                                    <form:radiobutton
                                            path="active"
                                            class="form-check-input"
                                            id="inlineRadioFalse"
                                            value="false"
                                            checked="checked"
                                    />
                                    <label class="form-check-label" for="inlineRadioFalse">False</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-8">
                                <button
                                        class="btn btn-secondary btn-sm"
                                        onclick="location.href='${listIdentity}'"
                                        type="button">Cancel
                                </button>
                                <button
                                        class="btn btn-primary btn-sm"
                                >Next
                                </button>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
<%@ include file="../footer.jsp" %>
