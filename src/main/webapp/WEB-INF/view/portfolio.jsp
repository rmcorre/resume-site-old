<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<%@ include file="header.jsp" %>
<div class="container-fluid min-vh-100-100">
    <div class="row">
        <div class="col-3 leftSideBar min-vh-100">
            <div class="brand pt-4 pb-5">
                <div class="pic">
                    <div class="identityWrapper">
                        <h2 class="text-white w-100 mb-0 pl-1" >${identity.firstName} ${identity.lastName}</h2>
                        <h6 class="text-white signikaReg mb-0 pl-1">${portfolio.portfolioName}</h6>
                    </div>
                </div>
            </div>
            <div class="pb-3">
                <h5 class="text-white w-100 pl-2 pr-3">About Myself</h5>
                <p class="summary text-white signikaSm w-100 pl-2 pr-3">${portfolio.summary}</p>
            </div>
            <div class="px-2">
                <h5 class="text-white w-100">Contact Information</h5>
                <div class="text-white signikaSm w-100">${identity.email}</div>
                <div class="text-white signikaSm w-100">${identity.phone}</div>
                <div class="text-white signikaSm w-100">${identityAddress.countyStateProvince}, ${identityAddress.countryRegion}</div>
            </div>
        </div>

        <div class="col-6">
            <h3 class="col-10 mx-auto mt-5 mb-2 slateBlue">Education</h3>
            <table class="table col-10 mx-auto mb-5">
                <tbody>
                    <c:forEach var="education" items="${educationSet}">
                        <tr>
                            <td class="signikaReg" style="width: 35%">
                                    ${education.startDate} - ${education.endDate}
                            </td>
                            <td class="h6 signikaReg" style="width: 65%">
                                    ${education.course} <br>
                                    ${education.institution} <br>
                                    ${education.address}
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="h3 col-10 mx-auto mb-2 slateBlue">Employment</div>
            <table class="table col-10 mx-auto mb-5">
                <tbody>
                <c:forEach var="employer" items="${employers}">
                    <tr>
                        <td class="signikaReg" style="width: 35%">
                                ${employer.startDate} - ${employer.endDate}
                        </td>
                        <td class="h6 signikaReg" style="width: 65%">
                                ${employer.position} <br>
                                ${employer.employerName} <br>
                                ${employer.summary}
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
        <div class="col-3 rightSideBar">
            <div class="pt-4 pb-4">
                <h5 class="text-white w-100">Industry Knowledge</h5>
                <c:forEach var="industryKnowledge" items="${industryKnowledge}">
                    <div class="text-white signikaSm">${industryKnowledge.area}</div>
                </c:forEach>
            </div>
            <div class="pb-4">
                <div class="h5 text-white w-100">Tools And Technology</div>
                <div class="row">
                    <div class="col-3">
                        <c:forEach var="backEnd" items="${backEndSkillCategory}">
                            <div class="text-white signikaSm">${backEnd}</div>
                        </c:forEach>
                    </div>
                    <div class="col-3">
                        <c:forEach var="frontEnd" items="${frontEndSkillCategory}">
                            <div class="text-white signikaSm">${frontEnd}</div>
                        </c:forEach>
                    </div>
                    <div class="col-3">
                        <c:forEach var="libraryAndFramework" items="${libraryAndFrameworkCategory}">
                            <div class="text-white signikaSm">${libraryAndFramework}</div>
                        </c:forEach>
                    </div>
                    <div class="col-3">
                        <c:forEach var="tools" items="${tools}">
                            <div class="text-white signikaSm">${tools}</div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
