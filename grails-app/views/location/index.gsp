<%@ page import="ssiwms2.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Location</h4>
		</div>
		<div class="panel-body">
			<div class="nav" role="navigation">
				<fieldset class ="buttons">
					<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h3></h3>
				</fieldset>
			</div>

			<div id="list-pickup" class="content scaffold-list" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered">
			<thead>
					<tr>
					
						<th><g:message code="location.item.label" default="Item" /></th>
					
						<g:sortableColumn property="locationCode" title="${message(code: 'location.locationCode.label', default: 'Location Code')}" />
					
						<g:sortableColumn property="locationName" title="${message(code: 'location.locationName.label', default: 'Location Name')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'location.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${locationInstanceList}" status="i" var="locationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "item")}</g:link></td>
					
						<td>${fieldValue(bean: locationInstance, field: "locationCode")}</td>
					
						<td>${fieldValue(bean: locationInstance, field: "locationName")}</td>
					
						<td>${fieldValue(bean: locationInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

			</div>
		</div>
	</body>
</html>
