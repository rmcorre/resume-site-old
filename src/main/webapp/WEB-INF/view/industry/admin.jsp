<%@ include file="../urls.jsp" %>

<%@ include file="../header.jsp" %>
    <div class="container-fluid h-100">
        <div class="row">
            <div class="col pb-5">
                <h2>Industry Admin</h2>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <table class="table table-sm table-bordered table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Domain</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="industry" items="${industryList}">
                        <tr>
                            <td>${industry.domain}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <button
                        class="btn btn-secondary"
                        onclick="location.href='${index}'"
                        type="button">Back
                </button>
                <button
                        class="btn btn-primary"
                        onclick="location.href='${createIndustry}'"
                        type="button">Create
                </button>
            </div>
        </div>
    </div>
<%@include file="../footer.jsp"%>