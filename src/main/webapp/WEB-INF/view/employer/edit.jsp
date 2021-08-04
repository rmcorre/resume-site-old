<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
<div class="container pt-5">
    <div class="row">
        <div class="col mb-3">
            <h3 class="text-secondary">Edit Employer</h3>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <form:form
                    method="post"
                    modelAttribute="employer"
                    action="${processEmployer}">

                <!-- Need to provide the id and version to the database to meet the constraints
                otherwise a new record is created -->
                <form:hidden path="id" />
                <form:hidden path="version" />

                <div class="form">
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="employerName">
                            Employer
                        </label>
                        <div class="col-3">
                            <form:input
                                    class="form-control bg-white"
                                    path="employerName"
                                    aria-describedby="employerNameHelp" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="startDate">
                            Start Date
                        </label>
                        <div class="col-3">
                            <form:input
                                    class="form-control"
                                    path="startDate"
                                    aria-describedby="startDateHelp" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="endDate">
                            End Date
                        </label>
                        <div class="col-3">
                            <form:input
                                    class="form-control"
                                    path="endDate"
                                    aria-describedby="endDateHelp" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="position">
                            Position
                        </label>
                        <div class="col-3">
                            <form:input
                                    class="form-control"
                                    path="position"
                                    aria-describedby="posiitonHelp" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="summary">
                            Summary
                        </label>
                        <div class="col-3">
                            <form:input
                                    class="form-control"
                                    path="summary"
                                    aria-describedby="summaryHelp" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2"></label>
                        <div class="col-3 d-flex justify-content-end">
                            <button
                                    class="btn btn-secondary btn-sm mr-2"
                                    onclick="location.href='${adminEmployer}?employerId=${employer.id}'"
                                    type="button">Cancel
                            </button>
                            <button
                                    class="btn btn-primary btn-sm"
                                >Update
                            </button>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
<%@ include file="../footer.jsp" %>
