<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
<div class="container-fluid h-100">
    <div class="row">
        <div class="col">
            <h2>INDUSTRY KNOWLEDGE CREATE</h2>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <form:form
                    action="${processIndustryKnowledge}"
                    modelAttribute="industryKnowledge"
                    method="post">

                <form:hidden path="id"/>

                <div class="form">
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="area">
                            Area
                        </label>
                        <div class="col-3">
                            <form:input
                                    class="form-control"
                                    path="area"
                                    aria-describedby="areaHelp"
                            />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="active">
                            Active
                        </label>
                        <div class="col-3">
                            <form:input
                                    class="form-control"
                                    path="active"
                                    aria-describedby="activeHelp"
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-2"></label>
                    <div class="col-3">
                        <button
                                class="btn btn-secondary"
                                onclick="location.href='${adminIndustryKnowledge}'"
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

