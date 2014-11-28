<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div class="panel panel-default">
    <div class="panel-heading">
        <h4>Create Location</h4>
    </div>

    <div class="panel-body">
        <div class="nav" role="navigation">

               <g:link class="btn btn-default" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link>
                <h1></h1>
        </div>
        <div id="create-location" class="content scaffold-create" role="main">

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${locationInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${locationInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                                error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>
            <div class="row">
                <div class="col-md-12">
                    <g:form url="[resource: locationInstance, action: 'save']">
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>
                        <h1></h1>
                        <fieldset class="buttons">
                            <g:submitButton name="create" class="btn btn-success"
                                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                        </fieldset>
                    </g:form>
                    </div>
                </div>

        </div>
    </div>
</div>

</body>
</html>
