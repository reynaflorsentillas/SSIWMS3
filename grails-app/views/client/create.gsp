<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1><g:message code="default.create.label" args="[entityName]" /></h1>
		<div class="nav" role="navigation">
			<fieldset class="buttons">
				<g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
				<h3></h3>
			</fieldset>

		</div>
		<div id="create-client" class="content scaffold-create" role="main">

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${clientInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${clientInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:clientInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
