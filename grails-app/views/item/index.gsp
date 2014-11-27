<%@ page import="ssiwms2.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<div class="nav" role="navigation">
			<fieldset class="button">
				<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<h3></h3>
			</fieldset>
		</div>
		<div id="list-item" class="content scaffold-list" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover">
			<thead class="th">
					<tr>

						<g:sortableColumn class="small" property="batchCode" title="${message(code: 'Box Number', default: 'Box Number')}" />

						<g:sortableColumn class="small" property="description" title="${message(code: 'item.description.label', default: 'Description')}" />

						<g:sortableColumn class="small" property="description" title="${message(code: 'Retention', default: 'Retention')}" />

						<g:sortableColumn class="small" property="department" title="${message(code: 'item.department.label', default: 'Department')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${itemInstanceList}" status="i" var="itemInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${itemInstance.id}">${fieldValue(bean: itemInstance, field: "batchCode")}</g:link></td>

						<td>${fieldValue(bean: itemInstance, field: "description")}</td>

						<td>${fieldValue(bean: itemInstance, field: "retention")}</td>

						<td>${fieldValue(bean: itemInstance, field: "department")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${itemInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
