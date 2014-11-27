<%@ page import="ssiwms2.Department" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<div class="nav" role="navigation">
			<fieldset class="buttons">
				<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<h3></h3>
			</fieldset>
		</div>
		<div id="list-department" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover">
			<thead class="th">
					<tr>
						<g:sortableColumn class="small" property="client" title="${message(code: 'department.client.label', default: 'Client')}"/>
					
						<g:sortableColumn class="small" property="clientCode" title="${message(code: 'department.clientCode.label', default: 'Client Code')}" />
					
						<g:sortableColumn class="small" property="departmentCode" title="${message(code: 'department.departmentCode.label', default: 'Department Code')}" />
					
						<g:sortableColumn class="small" property="departmentName" title="${message(code: 'department.departmentName.label', default: 'Department Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${departmentInstanceList}" status="i" var="departmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<div class="td">
							<td ><g:link action="show" id="${departmentInstance.id}">${fieldValue(bean: departmentInstance, field: "client")}</g:link></td>
					
							<td>${fieldValue(bean: departmentInstance, field: "clientCode")}</td>
					
							<td>${fieldValue(bean: departmentInstance, field: "departmentCode")}</td>
					
							<td>${fieldValue(bean: departmentInstance, field: "departmentName")}</td>
						</div>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${departmentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
