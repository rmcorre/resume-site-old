<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp"%>

<%@ include file="../header.jsp"%>
    <div class="container pt-5">
        <div class="row">
            <div class="col mb-3">
                <h3 class="text-secondary">Create Address</h3>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <form:form
                        method="post"
                        modelAttribute="employerAddress"
                        action="${processEmployer}">

                        <!-- adding an input like this allows the capture of the employerId
                            query param and the creation of more than one modelAttribute to
                            be submitted to the controller -->
                        <input type="hidden" name="employerId" value="${employerId}">

                        <form:hidden path="id"/>

                        <div class="form">
                            <div class="form-group row">
                                <label class="col-2 col-form-label" for="buildingNumber">
                                    Building Number
                                </label>
                                <div class="col-3">
                                    <form:input
                                            class="form-control"
                                            path="buildingNumber"
                                            aria-describedby="buildingNumberHelp"
                                    />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-2 col-form-label" for="street">
                                    Street
                                </label>
                                <div class="col-3">
                                    <form:input
                                            class="form-control"
                                            path="street"
                                            aria-describedby="streetHelp"
                                    />
                                </div>
                            </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="parishTownCity">
                                Parish/Town/City
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="parishTownCity"
                                        aria-describedby="parishTownCityHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="stateProvince">
                                State/Province
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="stateProvince"
                                        aria-describedby="stateProvinceHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="region">
                                Region
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="region"
                                        aria-describedby="regionHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="country">
                                Country
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="country"
                                        aria-describedby="countryHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="postalCode">
                                Postal Code
                            </label>
                            <div class="col-3">
                                <form:input
                                        class="form-control"
                                        path="postalCode"
                                        aria-describedby="postalCodeHelp"
                                />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2">
                                Current:
                            </label>
                            <div class="col-3">
                                <div class="form-check form-check-inline align-middle">
                                    <form:radiobutton
                                            class="form-check-input"
                                            path="current"
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
                                            path="current"
                                            id="inlineRadioFalse"
                                            value="false"
                                            checked="checked"
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
                                        onclick="location.href='${adminEmployer}?employerId=${employerId}'"
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
<%@ include file="../footer.jsp"%>
