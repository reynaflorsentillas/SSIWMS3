<%@ page import="ssiwms2.Department" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="panel panel-default">
	<div class="panel-heading">

			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			</div>
		<div class="panel-body">
			<div id="show-department" class="content scaffold-show" role="main">
			<div class="nav" role="navigation">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h3></h3>
				</fieldset>
			</div>
		</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

			
				<g:if test="${departmentInstance?.client}">
					<div class="row">
						<div class="col-sm-4">
							<label for="client">
								<g:message code="department.client.label" default="Client" />
							</label>
							<ul>
								<li>
									<span class="hyperlink" aria-labelledby="client-label"><g:link controller="client" action="show" id="${departmentInstance?.client?.id}">${departmentInstance?.client?.encodeAsHTML()}</g:link></span>
								</li>
							</ul>

						</div>
					</div>
					

					

				</g:if>
			
				<g:if test="${departmentInstance?.clientCode}">
					<div class="row">
						<div class="col-sm-4">
							<label for="clientCode">
								<g:message code="department.clientCode.label" default="Client Code" />
							</label>
							<span class="form-control" aria-labelledby="clientCode-label"><g:fieldValue bean="${departmentInstance}" field="clientCode"/></span>
						</div>
					</div>


					

					

				</g:if>

			
				<g:if test="${departmentInstance?.departmentCode}">
					<div class="row">
						<div class="col-sm-4">
							<label for="departmentCode">
								<g:message code="department.departmentCode.label" default="Department Code" />
							</label>
							<span class="form-control" aria-labelledby="departmentCode-label"><g:fieldValue bean="${departmentInstance}" field="departmentCode"/></span>
						</div>
					</div>


					

					

				</g:if>
			
				<g:if test="${departmentInstance?.departmentName}">
					<div class="row">
						<div class="col-sm-4">
							<label for="test">
								<g:message code="department.departmentName.label" default="Department Name" />
							</label>
							<span class="form-control" aria-labelledby="departmentName-label"><g:fieldValue bean="${departmentInstance}" field="departmentName"/></span>
							<h3></h3>
						</div>
					</div>


					

				</g:if>
			

			<g:form url="[resource:departmentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-info" action="edit" resource="${departmentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
		</div>
	</div>
	</body>
</html>
