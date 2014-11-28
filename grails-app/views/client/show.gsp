
<%@ page import="ssiwms2.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		<div class="nav" role="navigation">
			<ul class="nav navbar-nav">
				<li><g:link action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-client" role="main">

			<g:if test="${flash.message}">
			<div class="alert alert-success alert-dismissible" role="status">${flash.message}</div>
			</g:if>

			
				<g:if test="${clientInstance?.clientCode}">

					<span id="clientCode-label"><g:message code="client.clientCode.label" default="Client Code" /></span>
					
						<span class="form-control" aria-labelledby="clientCode-label"><g:fieldValue bean="${clientInstance}" field="clientCode"/></span>
					

				</g:if>
			
				<g:if test="${clientInstance?.clientName}">

					<span id="clientName-label"><g:message code="client.clientName.label" default="Client Name" /></span>
					
						<span class="form-control" aria-labelledby="clientName-label"><g:fieldValue bean="${clientInstance}" field="clientName"/></span>
					

				</g:if>
			
				<g:if test="${clientInstance?.dept}">

					<span id="dept-label" class="label"><g:message code="client.dept.label" default="Dept" /></span>
					
						<g:each in="${clientInstance.dept}" var="d">
						<span class="form-control" aria-labelledby="dept-label"><g:link controller="department" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					

				</g:if>
			
				<g:if test="${clientInstance?.user}">

					<span id="user-label" class="label"><g:message code="client.user.label" default="User" /></span>
					
						<g:each in="${clientInstance.user}" var="u">
						<span class="form-control" aria-labelledby="user-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					

				</g:if>
			

			<g:form url="[resource:clientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary btn-lg" action="edit" resource="${clientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
