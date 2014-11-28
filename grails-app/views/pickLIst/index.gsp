<%@ page import="ssiwms2.PickLIst" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pickLIst.label', default: 'Pick')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class= "panel panel-default">
			<div class="panel-heading">
				<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			</div>
			<div class="panel-body">
				<div class="nav" role="navigation">
					<fieldset ="buttons">
						<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h4></h4>
				</fieldset>
				</div>
					<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover">
			<thead class="th">
					<tr class="small">
					
						<g:sortableColumn property="barCode" title="${message(code: 'pickLIst.barCode.label', default: 'Bar Code')}" />
					
						<g:sortableColumn property="pickedUp" title="${message(code: 'pickLIst.pickedUp.label', default: 'Picked Up')}" />
					
						<g:sortableColumn property="batchCode" title="${message(code: 'pickLIst.batchCode.label', default: 'Batch Code')}" />
					
						<g:sortableColumn property="department" title="${message(code: 'pickLIst.department.label', default: 'Department')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'pickLIst.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="retention" title="${message(code: 'pickLIst.retention.label', default: 'Retention')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pickLIstInstanceList}" status="i" var="pickLIstInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pickLIstInstance.id}">${fieldValue(bean: pickLIstInstance, field: "barCode")}</g:link></td>
					
						<td>${fieldValue(bean: pickLIstInstance, field: "pickedUp")}</td>
					
						<td>${fieldValue(bean: pickLIstInstance, field: "batchCode")}</td>
					
						<td>${fieldValue(bean: pickLIstInstance, field: "department")}</td>
					
						<td>${fieldValue(bean: pickLIstInstance, field: "description")}</td>
					
						<td><g:formatDate date="${pickLIstInstance.retention}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
				<fieldset class="buttons">
					<g:submitButton name="create"  class="btn btn-danger" value="test"></g:submitButton>
					<g:submitButton name="create" class="btn btn-success" value="test2"></g:submitButton>
				</fieldset>
			<div class="pagination">
				<g:paginate total="${pickLIstInstanceCount ?: 0}" />
			</div>
				</div>
			</div>

	</body>
</html>
