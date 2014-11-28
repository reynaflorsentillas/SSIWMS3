<%@ page import="ssiwms2.Pickup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pickup.label', default: 'Pickup')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Edit Request</h4>
		</div>

		<div class="panel-body">
			<div class="nav" role="navigation">
					<g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h1></h1>
			</div>
			<div id="edit-pickup" class="content scaffold-edit" role="main">
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${pickupInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${pickupInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
				</g:hasErrors>
				<g:form url="[resource:pickupInstance, action:'update']" method="PUT" >
					<g:hiddenField name="version" value="${pickupInstance?.version}" />
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset class="buttons">
						<g:actionSubmit class="btn btn-success btn-sm" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</div>

	</body>
</html>
