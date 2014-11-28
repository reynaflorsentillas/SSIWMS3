<%@ page import="ssiwms2.Client" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Show Client</h4>
		</div>
		<div class="panel-body">
			<div class="nav" role="navigation">
			<fieldset class="buttons">
				<g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
				<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<h1></h1>
			</fieldset>
		</div>

		<div id="show-client" role="main">
			<g:if test="${flash.message}">
			<div class="alert alert-success alert-dismissible" role="status">${flash.message}</div>
				<h1></h1>
			</g:if>

				<div class="row">
					<div class="col-sm-12">
						<g:if test="${clientInstance?.clientCode}">
							<label><span id="clientCode-label"><g:message code="client.clientCode.label" default="Client Code" /></span></label>
							<h1></h1>
							<span class="form-control" aria-labelledby="clientCode-label"><g:fieldValue bean="${clientInstance}" field="clientCode"/></span>
						</g:if>
					</div>
				</div>
			<div class="row">
				<div class="col-sm-12">
				<h1></h1>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-12">
					<g:if test="${clientInstance?.clientName}">
						<label><span id="clientName-label"><g:message code="client.clientName.label" default="Client Name" /></span></label>
						<h1></h1>
						<span class="form-control" aria-labelledby="clientName-label"><g:fieldValue bean="${clientInstance}" field="clientName"/></span>
					</g:if>

				</div>
			</div>

			<div class=row>
				<div class="col-sm-4">
					<g:if test="${clientInstance?.dept}">
						<span id="dept-label" class="label"><g:message code="client.dept.label" default="Dept" /></span>
						<g:each in="${clientInstance.dept}" var="d">
							<span class="form-control" aria-labelledby="dept-label"><g:link controller="department" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					</g:if>

				</div>
			</div>

			<div class="row">
				<div class="col-sm-4">
					<g:if test="${clientInstance?.user}">
						<span id="user-label" class="label"><g:message code="client.user.label" default="User" /></span>
						<g:each in="${clientInstance.user}" var="u">
							<span class="form-control" aria-labelledby="user-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					</g:if>
				</div>
			</div>

			

			<h3></h3>

			<g:form url="[resource:clientInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${clientInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
