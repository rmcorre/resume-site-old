<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
    <div class="container pt-0">
        <div class="row">
            <div class="col mb-3">
                <h4 class="text-secondary">Create Identity</h4>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <form:form
                        action="${createAddress}"
                        modelAttribute="identity"
                        method="get">

                    <form:hidden path="id"/>

                    <div class="form">
                        <div class="row">
                            `<div class="form-group col-4">
                                <label for="firstName">First Name</label>
                                <form:input
                                        path="firstName"
                                        class="form-control"
                                        id="firstName"
                                        placeholder=""
                                        aria-describedby="firstNameHelp"
                                />
                            </div>
                            <div class="form-group col-4">
                                <label for="lastName">Last Name</label>
                                <form:input
                                        path="lastName"
                                        class="form-control"
                                        id="lastName"
                                        placeholder=""
                                        aria-describedby="lastNameHelp"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-4">
                                <label for="email">Email</label>
                                <form:input
                                        path="email"
                                        type="email"
                                        class="form-control"
                                        id="email"
                                        placeholder=""
                                        aria-describedby="emailHelp"
                                />
                            </div>
                            <div class="form-group col-4">
                                <label for="phone">Phone</label>
                                <form:input
                                        path="phone"
                                        type="tel"
                                        class="form-control"
                                        id="phone"
                                        placeholder=""
                                        aria-describedby="phoneHelp"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col">
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
