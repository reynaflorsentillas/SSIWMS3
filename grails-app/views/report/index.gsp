<%@ page import="ssiwms2.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Report</title>
	</head>
	<body>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h4>Report</h4>
		</div>
		<div class="panel-body">

		<div class="nav" role="navigation">
			<fieldset class ="button">
				<g:link class="btn btn-default bnt-sm" action="create"><g:message code="new Report" args="[entityName]" /></g:link>
	</fieldset>
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

			<fieldset class="button"">
		<g:submitButton name="create" class="btn btn-danger" value="test"></g:submitButton>
		<g:submitButton name="create" class="btn btn-success" value="test2"></g:submitButton>
		</fieldset>

			<div class="pagination">
				<g:paginate total="${reportInstanceCount ?: 0}" />
			</div>
		</div>
			</div>
			</div>
	</body>
</html>
