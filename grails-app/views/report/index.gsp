<%@ page import="ssiwms2.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<div class="nav" role="navigation">
			<fieldset class ="button">
				<li><g:link class="btn btn-default" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>

		</div>
		<div id="list-report" class="content scaffold-list" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover">
			<thead>
					<tr>
					
						<g:sortableColumn property="remarks" title="${message(code: 'report.remarks.label', default: 'Remarks')}" />
					
						<g:sortableColumn property="reporType" title="${message(code: 'report.reporType.label', default: 'Report Type')}" />
					
						<g:sortableColumn property="reportDate" title="${message(code: 'report.reportDate.label', default: 'Report Date')}" />
					
						<g:sortableColumn property="reportID" title="${message(code: 'report.reportID.label', default: 'Report ID')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reportInstanceList}" status="i" var="reportInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reportInstance.id}">${fieldValue(bean: reportInstance, field: "remarks")}</g:link></td>
					
						<td>${fieldValue(bean: reportInstance, field: "reporType")}</td>
					
						<td><g:formatDate date="${reportInstance.reportDate}" /></td>
					
						<td>${fieldValue(bean: reportInstance, field: "reportID")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reportInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
