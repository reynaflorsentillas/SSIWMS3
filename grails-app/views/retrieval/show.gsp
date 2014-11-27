<%@ page import="ssiwms2.Retrieval" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'retrieval.label', default: 'Retrieval')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-retrieval" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<div class="nav" role="navigation">

				<fieldset class="buttons">
					<g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h3></h3>
				</fieldset>
			</div>

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				<g:if test="${retrievalInstance?.address}">
					<div class="row">
						<div class="col-sm-4">
							<label for="address">
							<g:message code="retrieval.address.label" default="Address *"/>
							</label>
							<span class="form-control input-sm" aria-labelledby="address"><g:fieldValue  bean="${retrievalInstance}" field="address"/></span>
						</div>
					</div>

				</g:if>

				<g:if test="${retrievalInstance?.contactNumber}">
					<div class="row">
						<div class="col-sm-4">
							<label for="contactNumber">
								<g:message code="retrieval.contactNumber.label" default="Contact Number *" />
							</label>
							<span class="form-control input-sm" aria-labelledby="contactNumber"><g:fieldValue bean="${retrievalInstance}" field="contactNumber"/></span>
						</div>
					</div>
					


				</g:if>
				<g:if test="${retrievalInstance?.deliveryDate}">
					<div class="row">
						<div class="col-sm-4">
							<label for="deliveryDate">
								<g:message code="retrieval.deliveryDate.label" default="Delivery Date *" />
							</label>
							<span class="form-control input-sm" aria-labelledby="deliveryDate-label"><g:formatDate date="${retrievalInstance?.deliveryDate}" /></span>
						</div>
					</div>

				</g:if>
				<g:if test="${retrievalInstance?.departmentCode}">
					<div class="row">
						<div class="col-sm-4">
							<label for="deparmentCode">
								<g:message code="retrieval.departmentCode.label" default="Department Code *" />
							</label>
							<span class="form-control input-sm" aria-labelledby="departmentCode-label"><g:fieldValue bean="${retrievalInstance}" field="departmentCode"/></span>
						</div>
					</div>

				</g:if>
				<g:if test="${retrievalInstance?.items}">
					<div class="row">
						<div class="col-sm-4">
							<label for="item">
								<g:message code="retrieval.items.label" default="Items *" />
							</label>
							<ul>
								<li>
							<g:each in="${retrievalInstance.items}" var="i">
								<span class="hyperlink" aria-labelledby="items-label"?<g:link	controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
							</g:each>
								</li>
							</ul>
						</div>
					</div>


				</g:if>

				<g:if test="${retrievalInstance?.requestDate}">
					<div class="row">
						<div class="col-sm-4">
							<label for="requestDate">
								<g:message code="retrieval.requestDate.label" default="Request Date *" />
							</label>
							<span class="form-control input-sm" aria-labelledby="requestDate-label"><g:formatDate date="${retrievalInstance?.requestDate}" /></span>
						</div>
					</div>

				</g:if>
				<g:if test="${retrievalInstance?.requesterName}">
					<div class="row">
						<div class="col-sm-4">
							<label for="erase this">
								<g:message code="retrieval.requesterName.label" default="Requester Name *" />
							</label>
							<span class="form-control input-sm" aria-labelledby="requesterName-label"><g:fieldValue bean="${retrievalInstance}" field="requesterName"/></span>
							<h3></h3>
						</div>
					</div>

				</g:if>
			

			<g:form url="[resource:retrievalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-info " action="edit" resource="${retrievalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger " action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
