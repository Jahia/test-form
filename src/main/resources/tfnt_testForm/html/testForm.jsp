<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="user" uri="http://www.jahia.org/tags/user" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="variantNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>

<form name="testForm" id="testForm" class="form-horizontal" action="#">
    <div class="formPlaceholder">
        <fieldset>
            <legend>My form</legend>
            <div class="control-group">
                <label class="control-label" for="email">
                    Email
                </label>
                <div class="controls">
                    <input id="email" name="email" type="email" placeholder="placeholder" class="input-large">
                    <span class="hide help-inline"></span>
                    <p class="help-block">Please enter a valid email here</p>

                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="firstname">
                    First name
                </label>

                <div class="controls">
                    <input id="firstname" name="firstname" type="text" class="input-large">

                    <span class="hide help-inline"></span>

                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="gender">
                    Gender
                </label>

                <div class="controls">

                    <label class="radio" for="Gender-0">
                        <input type="radio" name="gender" id="gender-0" value="male">
                        Male
                    </label>

                    <label class="radio" for="Gender-1">
                        <input type="radio" name="gender" id="gender-1" value="female">
                        Female
                    </label>


                    <span class="hide help-inline"></span>


                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="age">
                    Age
                </label>

                <div class="controls">
                    <input id="age" name="age" type="number" class="input-large">

                    <span class="hide help-inline"></span>

                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="income">
                    Income
                </label>

                <div class="controls">
                    <input id="income" name="income" type="number" class="input-large">

                    <span class="hide help-inline"></span>

                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="martialStatus">
                    Marital Status
                </label>

                <div class="controls">
                    <select id="martialStatus" name="martialStatus">
                        <option>Single</option>
                        <option>Married</option>
                    </select>

                    <span class="hide help-inline"></span>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="freeField">
                    Free field
                </label>

                <div class="controls">
                    <input type="text" id="freeField" name="freeField">
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <button id="cancelbutton" type="button" name="_eventId_cancel" class="btn btn-primary  ">

                        Cancel

                    </button>
                    <c:if test="${currentNode.properties['mar:submitionType'].string == 'html'}">
                        <button id="singlebutton" type="submit" name="_eventId_submit" class="btn btn-primary  ">

                            Submit

                        </button>
                    </c:if>
                    <c:if test="${currentNode.properties['mar:submitionType'].string != 'html'}">
                        <button id="testFormSubmitButton" type="button" name="_eventId_submit" class="btn btn-primary  ">

                            Submit

                        </button>
                    </c:if>
                </div>
            </div>
        </fieldset>
    </div>
</form>

<c:if test="${currentNode.properties['mar:submitionType'].string == 'nativeJS'}">
    <script>
        $(document).ready(function(){
            document.getElementById("testFormSubmitButton").onclick = function() {
                document.getElementById("testForm").submit();
            }
        })
    </script>
</c:if>


<c:if test="${currentNode.properties['mar:submitionType'].string == 'jQuery'}">
    <script>
        $(document).ready(function(){
            $("#testFormSubmitButton").click(function() {
                $("#testForm").submit();
            });
        })
    </script>
</c:if>
