<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
    <div class="container-fluid h-100">
        <div class="row">
            <div class="col pb-5">
                <h2>CREATE INDUSTRY</h2>
            </div>
        </div>
        <div class="row">
            <div class="col pb-5">
                <form:form
                        action="${processIndustryCreate}"
                        modelAttribute="industry"
                        method="post">

                    <form:hidden path="id"/>

                    <div class="form">
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="domain">
                                Domain
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="domain"
                                        aria-describedby="domainHelp"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2"></label>
                        <div class="col-3">
                            <button
                                    class="btn btn-secondary"
                                    onclick="location.href='${adminIndustry}'"
                                    type="button">Cancel
                            </button>
                            <button
                                    class="btn btn-primary"
                                    >Create
                            </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
<%@ include file="../footer.jsp" %>