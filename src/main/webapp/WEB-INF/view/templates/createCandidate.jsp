<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ include file="../header.jsp" %>

    <div class="row">
        <div class="col pb-5">
            <h2>Create a identity identity</h2>
        </div>
    </div>

    <div class="row pb-5">
        <div class="col-12">
            <!-- Confused why this action="processCreateCandidate" works.
            Thought the form action was a call to the controller
            therefore, I would expect it to read: action="identity/processCreateCandidate".
            However, I noted that in the identityAddress bar the endpoint is
            localhost:8080/identity/processCreateCandidate.
            ***** Don't know if this is just a fluke *****-->

            <!-- NOTE: changed it to start at the root localhost:8080 with the "../" prefix because
            the way as described in the note above was confusing and could be error prone -->
            <form:form action="../identity/processCreateCandidate" modelAttribute="identity">
                <div class="form">
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="firstName">First Name *</label>
                        <div class="col-3">
                            <form:input path="firstName" class="form-control" id="firstName" placeholder="" aria-describedby="firstNameHelp" />
                                <%--                    <small id="firstNameHelp" class="form-text text-muted">First letter must be uppercase.</small>--%>
                            <form:errors path="firstName" cssClass="text-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="lastName">Last Name *</label>
                        <div class="col-3">
                            <form:input path="lastName" class="form-control" id="lastName" placeholder="" aria-describedby="lastNameHelp" />
                                <%--                    <small id="lastNameHelp" class="form-text text-muted">First letter must be uppercase.</small>--%>
                            <form:errors path="lastName" cssClass="text-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="email">Email *</label>
                        <div class="col-3">
                            <form:input path="email" type="email" class="form-control" id="email" placeholder="" aria-describedby="emailHelp" />
                                <%--                    <small id="emailHelp" class="form-text text-muted">Your email.</small>--%>
                            <form:errors path="email" cssClass="text-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="phone">Phone *</label>
                        <div class="col-3">
                            <form:input path="phone" type="tel" class="form-control" id="phone" placeholder="" aria-describedby="phoneHelp" />
                                <%--                    <small id="phoneHelp" class="form-text text-muted">Your phone number.</small>--%>
                            <form:errors path="phone" cssClass="text-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="title">Title *</label>
                        <div class="col-3">
                            <form:input path="title" type="text" class="form-control" id="title" placeholder="" aria-describedby="titleHelp" />
                                <%--                    <small id="titleHelp" class="form-text text-muted">Your professional title.</small>--%>
                            <form:errors path="title" cssClass="text-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 col-form-label" for="summary">Summary *</label>
                        <div class="col-3">
                            <form:textarea path="summary" class="form-control" id="summary" placeholder="" aria-describedby="summaryHelp" rows="4" />
                                <%--                    <small id="summaryHelp" class="form-text text-muted">Your short summary.</small>--%>
                            <form:errors path="summary" cssClass="text-danger" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2 pt-2">Active:</label>
                        <div class="col-3 pt-2">
                            <div class="form-check form-check-inline">
                                <form:radiobutton path="active" class="form-check-input" id="inlineRadioTrue" value="true" />
                                <label class="form-check-label" for="inlineRadioTrue">True</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <form:radiobutton path="active" class="form-check-input" id="inlineRadioFalse" value="false" checked="checked" />
                                <label class="form-check-label" for="inlineRadioFalse">False</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-2"></label>
                        <div class="col-3">
                            <input class="btn btn-primary float-right" type="submit" value="Submit">
                            <a href="../portfolio/portfolioAdmin" class="btn btn-warning float-right mr-1" type="button">Cancel</a>
                        </div>
                    </div>
                </div>
            </form:form>
        </div>
    </div>

<%@ include file="../footer.jsp" %>
