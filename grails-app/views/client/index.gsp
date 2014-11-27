<%@ page import="ssiwms2.Client" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<div class="nav" role="navigation">
			<fieldset ="buttons">
				<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<h3></h3>
			</fieldset>
		</div>
		<div id="list-client" class="content scaffold-list" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover">
			<thead class="th">
					<tr>
					
						<g:sortableColumn class="small" property="clientCode" title="${message(code: 'client.clientCode.label', default: 'Client Code')}" />
					
						<g:sortableColumn class="small" property="clientName" title="${message(code: 'client.clientName.label', default: 'Client Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clientInstanceList}" status="i" var="clientInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<div class="td">
							<td><g:link action="show" id="${clientInstance.id}">${fieldValue(bean: clientInstance, field: "clientCode")}</g:link></td>
					
							<td>${fieldValue(bean: clientInstance, field: "clientName")}</td>
						</div>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clientInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
