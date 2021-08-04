<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
    <div class="container pt-5">
        <div class="row">
            <div class="col mb-3">
                <h3 class="text-secondary">Edit Profile</h3>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <form:form
                        method="post"
                        modelAttribute="identity"
                        action="${processIdentity}">

                    <!-- Need to provide the id and version to the database to meet the constraints
                        otherwise a new record is created -->
                    <form:hidden path="id" />
                    <form:hidden path="version" />

                    <div class="form">
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="firstName">
                                First Name
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control bg-white"
                                        path="firstName"
                                        aria-describedby="firstNameHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="lastName">
                                Last Name
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="lastName"
                                        aria-describedby="lastNameHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="email">
                                Email
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="email"
                                        type="email"
                                        aria-describedby="emailHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="phone">
                                Phone
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="phone"
                                        type="tel"
                                        aria-describedby="phoneHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="title">
                                Title
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="title"
                                        aria-describedby="titleHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="summary">
                                Summary
                            </label>
                            <div class="col-3">
                                <form:textarea
                                        class="form-control"
                                        path="summary"
                                        aria-describedby="summaryHelp"
                                        rows="3"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2">
                                Active:
                            </label>
                            <div class="col-3">
                                <div class="form-check form-check-inline align-middle">
                                    <form:radiobutton
                                            class="form-check-input"
                                            path="active"
                                            id="inlineRadioTrue"
                                            value="true"
                                    />
                                    <label class="form-check-label" for="inlineRadioTrue">
                                        True
                                    </label>
                                </div>
                                <div class="form-check form-check-inline align-middle">
                                    <form:radiobutton
                                            class="form-check-input"
                                            path="active"
                                            id="inlineRadioFalse"
                                            value="false"
                                    />
                                    <label class="form-check-label" for="inlineRadioFalse">
                                        False
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2"></label>
                            <div class="col-3 d-flex justify-content-end">
                                <button
                                        class="btn btn-secondary btn-sm mr-2"
                                        onclick="location.href='${adminIdentity}?profileId=${identity.id}'"
                                        type="button">Cancel
                                </button>
                                <button class="btn btn-primary btn-sm"
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
