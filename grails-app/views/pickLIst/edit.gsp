<%@ page import="ssiwms2.PickLIst" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pickLIst.label', default: 'PickLIst')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="panel panel-default">



		<div id="edit-pickLIst" class="content scaffold-edit" role="main">
			<div class="panel-heading">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			</div>
			<div class="panel-body">


				<div class="nav" role="navigation">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				</fieldset>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${pickLIstInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${pickLIstInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:pickLIstInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${pickLIstInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-warning" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
			</div>
		</div>
		</div>
	</body>
</html>
