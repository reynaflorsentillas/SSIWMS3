<%@ page import="ssiwms2.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Show Location</h4>
		</div>
		<div class="panel-body">


			<div id="show-pickup" class="content scaffold-show" role="main">
				<div class="nav" role="navigation">
					<fieldset class="button">
						<g:link class="btn btn-default btn-sm"  action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
						<g:link class="btn btn-default btn-sm"  action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
						<h3></h3>
					</fieldset>
				</div>

				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>


				<g:if test="${locationInstance?.item}">
					<div class="row">
						<div class="col-sm-6">
							<label for="item">
								<g:message code="location.item.label" default="Item" />
							</label>
							<span class="form-control" aria-labelledby="item-label"><g:link controller="item" action="show" id="${locationInstance?.item?.id}">${locationInstance?.item?.encodeAsHTML()}</g:link></span>
						</div>
					</div>
				</g:if>

				<g:if test="${locationInstance?.locationCode}">
					<div class="row">
						<div class="col-sm-6">
							<label for="locationCode">
								<g:message code="location.locationCode.label" default="Location Code" />
							</label>
							<span class="form-control" aria-labelledby="locationCode-label"><g:fieldValue bean="${locationInstance}" field="locationCode"/></span>
						</div>
					</div>
				</g:if>

				<g:if test="${locationInstance?.locationName}">
					<div class="row">
						<div class="col-sm-6">
							<label for="locationName">
								<g:message code="location.locationName.label" default="Location Name" />
							</label>
							<span class="form-control" aria-labelledby="locationName-label"><g:fieldValue bean="${locationInstance}" field="locationName"/></span>
						</div>
					</div>
				</g:if>

				<g:if test="${locationInstance?.status}">
					<div class="row">
						<div class="col-sm-6">
							<label for="status">
								<g:message code="location.status.label" default="Status" />
							</label>
							<span class="form-control" aria-labelledby="status-label"><g:fieldValue bean="${locationInstance}" field="status"/></span>
						</div>
					</div>
					<h3></h3>
				</g:if>


				<g:form url="[resource:locationInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons">
						<g:link class="btn btn-primary"  action="edit" resource="${locationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="btn btn-primary"  action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
