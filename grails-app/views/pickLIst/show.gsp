<%@ page import="ssiwms2.PickLIst" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pickLIst.label', default: 'PickLIst')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="panel panel-default">

		<div id="show-pickLIst" class="content scaffold-show" role="main">
			<div class="panel-heading">
				<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			</div>
			<div class="panel-body">
			<div class="nav" role="navigation">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h4></h4>
				</fieldset>
			</div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>


				<g:if test="${pickLIstInstance?.barCode}">
				<div class="row">
					<div class="col-sm-6">
						<label for="barCode">
							<g:message code="pickLIst.barCode.label" default="Bar Code" />
						</label>
						<span class="form-control" aria-labelledby="barCode-label"><g:fieldValue bean="${pickLIstInstance}" field="barCode"/></span>
					</div>
				</div>
				</g:if>
			
				<g:if test="${pickLIstInstance?.pickedUp}">
					<div class="row">
						<div class="col-sm-6">
							<label for ="pickedUp">
								<g:message code="pickLIst.pickedUp.label" default="Picked Up" />
							</label>
							<span class="form-control" aria-labelledby="pickedUp-label"><g:fieldValue bean="${pickLIstInstance}" field="pickedUp"/></span>
						</div>
					  </div>

				</g:if>
			
				<g:if test="${pickLIstInstance?.batchCode}">
					<div class="row">
						<div class="col-sm-6">
							<label for="batchCode">
								<g:message code="pickLIst.batchCode.label" default="Batch Code" />
							</label>
							<span class="form-control" aria-labelledby="batchCode-label"><g:fieldValue bean="${pickLIstInstance}" field="batchCode"/></span>
						</div>
					</div>
				</g:if>
			
				<g:if test="${pickLIstInstance?.department}">
					<div class="row">
						<div class="col-sm-6">
							<label for="department">
								<g:message code="pickLIst.department.label" default="Department" />
							</label>
							<span class="form-control" aria-labelledby="department-label"><g:fieldValue bean="${pickLIstInstance}" field="department"/></span>
						</div>
					</div>
				</g:if>
			
				<g:if test="${pickLIstInstance?.description}">
				<div class = "row">
					<div class="col-sm-6">
						<label for="description">
							<g:message code="pickLIst.description.label" default="Description" />
						</label>
						<span class="form-control" aria-labelledby="description-label"><g:fieldValue bean="${pickLIstInstance}" field="description"/></span>
					</div>
				</div>
				</g:if>
			
				<g:if test="${pickLIstInstance?.retention}">
				<div class ="row">
					<div class="col-sm-6">
						<label for="retention">
							<g:message code="pickLIst.retention.label" default="Retention" />
						</label>
						<span class="form-control" aria-labelledby="retention-label"><g:formatDate date="${pickLIstInstance?.retention}" /></span>
					</div>
				</div>
				</g:if>
			
				<g:if test="${pickLIstInstance?.retrieval}">
					<div class="row">
						<div class="col-sm-6">
							<g:message code="pickLIst.retrieval.label" default="Retrieval" />
						</div>
						<span class="form-control" aria-labelledby="retrieval-label"><g:link controller="retrieval" action="show" id="${pickLIstInstance?.retrieval?.id}">${pickLIstInstance?.retrieval?.encodeAsHTML()}</g:link></span>
					</div>




				</li>
				</g:if>
			
				<g:if test="${pickLIstInstance?.status}">
				<div class="row">
					<div class="col-sm-6">
						<label for="status">
							<g:message code="pickLIst.status.label" default="Status" />
						</label>
						<span class="form-control" aria-labelledby="status-label"><g:fieldValue bean="${pickLIstInstance}" field="status"/></span>
					</div>
				</div>
				</g:if>
			

			<g:form url="[resource:pickLIstInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-info" action="edit" resource="${pickLIstInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			</div>
			</div>
		</div>
	</body>
</html>
