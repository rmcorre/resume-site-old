<%@ include file="urls.jsp" %>

<%@ include file="header.jsp" %>
<div class="container-fluid h-100">
    <div class="row">
        <div class="col">
            <h2>Index.jsp</h2>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <p>This is the index page</p>
            <!--
                Since intellij code inspection is expecting the href to point to an actual jsp
                file and some of the anchor tags are actually used to submit a controller request,
                I decided to use a <button> element instead of an <a> anchor element because of
                intellij errors.
                Can also use a form action, which might be the correct way to do this but, this
                is more compact and looks neater.
                See this SO post for options:
                https://stackoverflow.com/questions/2906582/how-to-create-an-html-button-that-acts-like-a-link
            -->
            <button
                    class="btn btn-primary"
                    onclick="location.href='${adminIdentity}?identityId=1'"
                    type="button">Profile
            </button>
            <button
                    class="btn btn-primary"
                    onclick="location.href='${adminEmployer}'"
                    type="button">Employer
            </button>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
