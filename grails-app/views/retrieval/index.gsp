<%@ page import="ssiwms2.Retrieval" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'retrieval.label', default: 'Retrieval')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Retrieval Requests</h4>
		</div>

		<div class="panel-body">
			<div id="list-retrieval" class="content scaffold-list" role="main">

				<div class="nav" role="navigation">
					<fieldset = "buttons">
				<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h3></h3>
				</fieldset>
				</div>

				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<table class="table table-bordered table-hover">
					<thead class="th">
					<tr>

						<g:sortableColumn class="small" property="address" title="${message(code: 'retrieval.address.label', default: 'Address')}" />

						<g:sortableColumn class="small" property="companyName" title="${message(code: 'retrieval.companyName.label', default: 'Copmpany Name')}" />

						<g:sortableColumn class="small" property="contactNumber" title="${message(code: 'retrieval.contactNumber.label', default: 'Contact Number')}" />

						<g:sortableColumn class="small" property="deliveryDate" title="${message(code: 'retrieval.deliveryDate.label', default: 'Delivery Date')}" />

						<g:sortableColumn class="small" property="departmentCode" title="${message(code: 'retrieval.departmentCode.label', default: 'Department Code')}" />

						<g:sortableColumn class="small"	property="requesterName" title="${message(code: 'retrieval.requesterName.label', default: 'Requester Name')}" />

					</tr>
					</thead>
					<tbody>
					<g:each in="${retrievalInstanceList}" status="i" var="retrievalInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
							<div class="small">
								<td><g:link action="show" id="${retrievalInstance.id}">${fieldValue(bean: retrievalInstance, field: "address")}</g:link></td>

								<td>${fieldValue(bean: retrievalInstance, field: "clientCode")}</td>

								<td>${fieldValue(bean: retrievalInstance, field: "contactNumber")}</td>

								<td><g:formatDate date="${retrievalInstance.deliveryDate}" /></td>

								<td>${fieldValue(bean: retrievalInstance, field: "departmentCode")}</td>

								<td>${fieldValue(bean: retrievalInstance, field: "pickListNo")}</td>

								<td>${fieldValue(bean: retrievalInstance, field: "requesterName")}</td>

							</div>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${retrievalInstanceCount ?: 0}" />
				</div>
			</div>
		</div>
	</div>


	</body>
</html>
