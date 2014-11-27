<%@ page import="ssiwms2.Report" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'report.label', default: 'Report')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		</div>
		<div id="show-report" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<div class="nav" role="navigation">
				<fieldset class="button">
					<g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h3></h3>
				</fieldset>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>

			
				<g:if test="${reportInstance?.remarks}">
					<div class="row">
                            <div class="col-sm-4">
                                <label for="clientCode">
                        <g:message code="report.remarks.label" default="Remarks" />
					</label>
						<span class="form-control" aria-labelledby="remarks-label"><g:fieldValue bean="${reportInstance}" field="remarks"/></span>
					</div>
				</div>
				</g:if>
			
				<g:if test="${reportInstance?.reporType}">
					<div class="row">
                        <div class="col-sm-4">
                            <label for="clientCode">
						<g:message code="report.reporType.label" default="Repor Type" />
					</label>
						<span class="form-control" aria-labelledby="reporType-label"><g:fieldValue bean="${reportInstance}" field="reporType"/></span>
					</div>
				</div>
				</g:if>
			
				<g:if test="${reportInstance?.reportDate}">
					<div class="row">
                        <div class="col-sm-4">
                            <label for="clientCode">
                             <g:message code="report.reportDate.label" default="Report Date" />
							</label>
							<span class="form-control" aria-labelledby="reportDate-label"><g:formatDate date="${reportInstance?.reportDate}" /></span>
						</div>
					</div>
				</g:if>
			
				<g:if test="${reportInstance?.reportID}">
					<div class="row">
                       <div class="col-sm-4">
                          <label for="clientCode">
                            <g:message code="report.reportID.label" default="Report ID" /></span>
						  </label>
							 <span class="form-control" aria-labelledby="reportID-label"><g:fieldValue bean="${reportInstance}" field="reportID"/></span>
						</div>
					</div>
				</g:if>

			<g:form url="[resource:reportInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${reportInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger " action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
