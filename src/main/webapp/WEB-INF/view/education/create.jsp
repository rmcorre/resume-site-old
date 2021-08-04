<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp" %>
<%@ include file="../header.jsp" %>

    <div class="container pt-0">
        <div class="row">
            <div class="col mb-3">
                <h4 class="text-secondary">Create Education</h4>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <form:form
                        action="${processEducation}"
                        modelAttribute="education"
                        method="post">

                    <form:hidden path="id"/>

                    <div class="form">
                        <div class="row">
                            `<div class="form-group col-4">
                                <label for="institution">Institution</label>
                                <form:input
                                        path="institution"
                                        class="form-control"
                                        id="institution"
                                        placeholder=""
                                        aria-describedby="institutionHelp"
                                />
                            </div>
                            <div class="form-group col-4">
                                <label for="course">Course</label>
                                <form:input
                                        path="course"
                                        class="form-control"
                                        id="course"
                                        placeholder=""
                                        aria-describedby="courseHelp"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-4">
                                <label for="startDate">Start Date</label>
                                <form:input
                                        path="startDate"
                                        class="form-control"
                                        id="startDate"
                                        placeholder=""
                                        aria-describedby="startDatelHelp"
                                />
                            </div>
                            <div class="form-group col-4">
                                <label for="endDate">End Date</label>
                                <form:input
                                        path="endDate"
                                        class="form-control"
                                        id="endDate"
                                        placeholder=""
                                        aria-describedby="endDateHelp"
                                />
                            </div>
                            <div class="form-group col-4">
                                <label for="address">Address</label>
                                <form:input
                                        path="address"
                                        class="form-control"
                                        id="address"
                                        placeholder=""
                                        aria-describedby="addressHelp"
                                />
                            </div>
                        </div>
<%--                        <div class="row">--%>
<%--                            <div class="form-group col">--%>
<%--                                <label class="mr-3">Active:</label>--%>
<%--                                <div class="form-check form-check-inline align-top">--%>
<%--                                    <form:radiobutton--%>
<%--                                            path="active"--%>
<%--                                            class="form-check-input"--%>
<%--                                            id="inlineRadioTrue"--%>
<%--                                            value="true"--%>
<%--                                    />--%>
<%--                                    <label class="form-check-label" for="inlineRadioTrue">True</label>--%>
<%--                                </div>--%>
<%--                                <div class="form-check form-check-inline align-top">--%>
<%--                                    <form:radiobutton--%>
<%--                                            path="active"--%>
<%--                                            class="form-check-input"--%>
<%--                                            id="inlineRadioFalse"--%>
<%--                                            value="false"--%>
<%--                                            checked="checked"--%>
<%--                                    />--%>
<%--                                    <label class="form-check-label" for="inlineRadioFalse">False</label>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <div class="row">
                            <div class="form-group col-8">
                                <button
                                        class="btn btn-secondary btn-sm"
                                        onclick="location.href='${listIdentity}'"
                                        type="button">Cancel
                                </button>
                                <button
                                        class="btn btn-primary btn-sm"
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
