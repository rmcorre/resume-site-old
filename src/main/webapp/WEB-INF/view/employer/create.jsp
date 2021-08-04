<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
    <div class="container-fluid h-100">
        <div class="row">
            <div class="col pb-5">
                <h2>CREATE EMPLOYER</h2>
            </div>
        </div>
        <div class="row pb-5">
            <div class="col-12">
                <form:form
                        action="${createEmployerAddress}"
                        modelAttribute="employer"
                        method="post">

                    <form:hidden path="id" />

                    <div class="form">
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="employer">
                                Employer
                            </label>
                            <div class="col-3">
                                <form:input
                                        path="employerName"
                                        class="form-control"
                                        id="employer"
                                        placeholder=""
                                        aria-describedby="employerHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="startDate">
                                Start Date
                            </label>
                            <div class="col-3">
                                <form:input
                                        path="startDate"
                                        class="form-control"
                                        id="startDate"
                                        placeholder=""
                                        aria-describedby="startDateHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="endDate">
                                End Date
                            </label>
                            <div class="col-3">
                                <form:input
                                        path="endDate"
                                        class="form-control"
                                        id="endDate"
                                        placeholder=""
                                        aria-describedby="endDateHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="position">
                                Position
                            </label>
                            <div class="col-3">
                                <form:input
                                        path="position"
                                        class="form-control"
                                        id="position"
                                        placeholder=""
                                        aria-describedby="positionHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="summary">
                                Summary
                            </label>
                            <div class="col-3">
                                <form:input
                                        path="summary"
                                        type="text"
                                        class="form-control"
                                        id="summary"
                                        placeholder=""
                                        aria-describedby="summaryHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2"></label>
                            <div class="col-3">
                                <button
                                        class="btn btn-secondary"
                                        onclick="location.href='${adminEmployer}'"
                                        type="button">Cancel
                                </button>
                                <button
                                    class="btn btn-primary"
                                    >Create
                                </button>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
<%@ include file="../footer.jsp" %>


