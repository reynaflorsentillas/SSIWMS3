<%@ page import="ssiwms2.Billing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'billing.label', default: 'Billing')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-billing" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>

            <div class="nav" role="navigation">

                <fieldset class = button>

                    <g:link class="btn-default" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                    <g:link class="btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                </fieldset>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${billingInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${billingInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:billingInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${billingInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
