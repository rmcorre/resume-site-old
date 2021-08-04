<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="context" value="${pageContext.request.contextPath}"/>
<%--Context: <c:out value="${context}"/>--%>

<c:set var="index" value="${context}/"/>

<c:set var="listIdentity" value="${context}/identity/list"/>
<c:set var="adminIdentity" value="${context}/identity/admin"/>
<c:set var="createIdentity" value="${context}/identity/create"/>
<c:set var="createAddress" value="${context}/identity/createAddress"/>
<c:set var="editIdentity" value="${context}/identity/edit"/>
<c:set var="processIdentity" value="${context}/identity/process"/>
<c:set var="deleteIdentity" value="${context}/identity/delete"/>

<c:set var="adminIdentityAddress" value="${context}/identityAddress/admin"/>
<c:set var="createIdentityAddress" value="${context}/identityAddress/create"/>
<c:set var="editIdentityAddress" value="${context}/identityAddress/edit"/>
<c:set var="processIdentityAddress" value="${context}/identityAddress/process"/>
<c:set var="deleteIdentityAddress" value="${context}/identityAddress/delete"/>

<c:set var="createEducation" value="${context}/education/create"/>
<c:set var="processEducation" value="${context}/education/process"/>

<c:set var="adminEmployer" value="${context}/employer/admin"/>
<c:set var="createEmployer" value="${context}/employer/create"/>
<c:set var="editEmployer" value="${context}/employer/edit"/>
<c:set var="processEmployer" value="${context}/employer/process"/>
<c:set var="deleteEmployer" value="${context}/employer/delete"/>

<c:set var="adminEmployerAddress" value="${context}/employerAddress/admin"/>
<c:set var="createEmployerAddress" value="${context}/employerAddress/create"/>
<c:set var="editEmployerAddress" value="${context}/employerAddress/edit"/>
<c:set var="processEmployerAddress" value="${context}/employerAddress/process"/>
<c:set var="deleteEmployerAddress" value="${context}/employerAddress/delete"/>

<c:set var="adminPortfolio" value="${context}/portfolio/admin"/>
<c:set var="createPortfolio" value="${context}/portfolio/create"/>
<c:set var="editPortfolio" value="${context}/portfolio/edit"/>
<c:set var="processPortfolio" value="${context}/portfolio/process"/>
<c:set var="dashboard" value="${context}/portfolio/dashboard"/>

<c:set var="adminIndustry" value="${context}/industry/admin"/>
<c:set var="createIndustry" value="${context}/industry/create"/>
<c:set var="processIndustryCreate" value="${context}/industry/processCreate"/>

<c:set var="adminIndustryKnowledge" value="${context}/industryKnowledge/admin"/>
<c:set var="processIndustryKnowledge" value="${context}/industryKnowledge/process"/>

<c:set var="createSkill" value="${context}/skill/create"/>






