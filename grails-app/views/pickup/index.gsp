<%@ page import="ssiwms2.Pickup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pickup.label', default: 'Pickup')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<h1><g:message code="default.list.label" args="[entityName]" /></h1>
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
			<table class="table table-bordered table-hover">
			<thead class="th">
					<tr>

						<g:sortableColumn class="small" property="clientCode" title="${message(code: 'pickup.clientCode.label', default: 'Company Name')}" />

						<g:sortableColumn class="small" property="requesterName" title="${message(code: 'pickup.requesterName.label', default: 'Name Of Requester')}" />

						<g:sortableColumn class="small" property="address" title="${message(code: 'pickup.address.label', default: 'Address')}" />

						<g:sortableColumn class="small" property="contactNumber" title="${message(code: 'pickup.contactNumber.label', default: 'Contact Number')}" />

						<g:sortableColumn class="small" property="departmentCode" title="${message(code: 'pickup.departmentCode.label', default: 'Department Code')}" />

						<g:sortableColumn class="small" property="pickupDate" title="${message(code: 'pickup.pickupDate.label', default: 'Pickup Date')}" />

						<g:sortableColumn class="small" property="requestDate" title="${message(code: 'pickup.requestDate.label', default: 'Request Date')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${pickupInstanceList}" status="i" var="pickupInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${pickupInstance.id}">${fieldValue(bean: pickupInstance, field: "clientCode")}</g:link></td>

						<td>${fieldValue(bean: pickupInstance, field: "requesterName")}</td>

						<td>${fieldValue(bean: pickupInstance, field: "address")}</td>

						<td>${fieldValue(bean: pickupInstance, field: "contactNumber")}</td>

						<td>${fieldValue(bean: pickupInstance, field: "departmentCode")}</td>

						<td>${fieldValue(bean: pickupInstance, field: "pickupDate")}</td>

						<td>${fieldValue(bean: pickupInstance, field: "requestDate")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pickupInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
