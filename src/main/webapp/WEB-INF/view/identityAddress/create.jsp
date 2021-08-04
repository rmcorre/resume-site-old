<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../urls.jsp" %>
<%@ include file="../header.jsp" %>

    <div class="container">
        <div class="row">
            <div class="col mb-3">
                <h4 class="text-secondary d-inline-block mr-4">Create Address</h4>
                <h5 class="text-secondary d-inline-block">${identity.firstName} ${identity.lastName}</h5>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <form:form
                        method="post"
                        modelAttribute="address"
                        action="${processIdentity}">

                    <form:hidden path="id"/>

                    <div class="form">
                        <div class="row">
                            <div class="form-group col-2">
                                <label  for="houseAptSuite">House/Apt/Suite</label>
                                <form:input
                                        class="form-control bg-white"
                                        path="houseAptSuite"
                                        aria-describedby="buildingNumberHelp"
                                />
                            </div>
                            <div class="form-group col-6">
                                <label for="address">Address</label>
                                <form:input
                                        class="form-control"
                                        path="address"
                                        aria-describedby="streetHelp"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-4">
                                <label for="parishTownCity">Parish/Town/City</label>
                                <form:input
                                        class="form-control"
                                        path="parishTownCity"
                                        aria-describedby="parishTownCityHelp"
                                />
                            </div>
                            <div class="form-group col-4">
                                <label for="countyStateProvince">County/State/Prov</label>
                                <form:input
                                        class="form-control"
                                        path="countyStateProvince"
                                        aria-describedby="stateProvinceHelp"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-4">
                                <label for="countryRegion">Country/Region</label>
                                <form:input
                                        class="form-control"
                                        path="countryRegion"
                                        aria-describedby="regionHelp"
                                />
                            </div>
                            <div class="form-group col-4" >
                                <label for="postalCode">Postal Code</label>
                                <form:input
                                        class="form-control"
                                        path="postalCode"
                                        aria-describedby="postalCodeHelp"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col">
                                <label class="mr-3">Current:</label>
                                <div class="form-check form-check-inline align-top">
                                    <form:radiobutton
                                            class="form-check-input"
                                            path="current"
                                            id="inlineRadioTrue"
                                            value="true"
                                    />
                                    <label class="form-check-label" for="inlineRadioTrue">True</label>
                                </div>
                                <div class="form-check form-check-inline align-top">
                                    <form:radiobutton
                                            class="form-check-input"
                                            path="current"
                                            id="inlineRadioFalse"
                                            value="false"
                                            checked="checked"
                                    />
                                    <label class="form-check-label" for="inlineRadioFalse">False</label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="fom-group col-8">
                                <button
                                        class="btn btn-secondary btn-sm"
                                        onclick="location.href='${adminIdentity}?profileId=${profileId}'"
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
