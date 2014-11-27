<%@ page import="ssiwms2.Pickup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pickup.label', default: 'Pickup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>


		<div id="show-pickup" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<div class="nav" role="navigation">
				<fieldset class="button">
					<g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<h3></h3>
				</fieldset>
			</div>
\
					<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
					</g:if>


				<g:if test="${pickupInstance?.address}">
					<div class="row">
                        <div class="col-sm-4">
                            <label for="address">
					<g:message code="pickup.address.label" default="Address" />
					</label>
						<span class="form-control" aria-labelledby="address-label"><g:fieldValue bean="${pickupInstance}" field="address"/></span>
						</div>
					</div>
				</g:if>

				<g:if test="${pickupInstance?.contactNumber}">
					<div class="row">
                        <div class="col-sm-4">
                           <label for="contactNumber">
					<g:message code="pickup.contactNumber.label" default="Contact Number" />
					</label>
						<span class="form-control" aria-labelledby="contactNumber-label"><g:fieldValue bean="${pickupInstance}" field="contactNumber"/></span>
						</div>
					</div>
				</g:if>
			
				<g:if test="${pickupInstance?.departmentCode}">
					<div class="row">
                       <div class="col-sm-4">
                          <label for="departmentCode">
					<g:message code="pickup.departmentCode.label" default="Department Code" />
					</label>
						<span class="form-control" aria-labelledby="departmentCode-label"><g:fieldValue bean="${pickupInstance}" field="departmentCode"/></span>
					</div>
				</div>
				</g:if>
			
				<g:if test="${pickupInstance?.items}">
					<div class="row">
                       <div class="col-sm-4">
                           <label for="items">
                             <g:message code="pickup.items.label" default="Items" />
							</label>
						<g:each in="${pickupInstance.items}" var="i">
						<span class="form-control" aria-labelledby="items-label"><g:link controller="item" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>

						</g:each>
					

				</g:if>

				<g:if test="${pickupInstance?.pickupDate}">
					<div class="row">
                       	<div class="col-sm-4">
                          	<label for="pickupDate">
							<g:message code="pickup.pickupDate.label" default="Pickup Date" />
							</label>
							<span class="form-control" aria-labelledby="pickupDate-label"><g:formatDate date="${pickupInstance?.pickupDate}" /></span>
						</div>
					</div>
				</g:if>
			
				<g:if test="${pickupInstance?.requestDate}">
					<div class="row">
                       	<div class="col-sm-4">
                          	<label for="requestDate">
								<g:message code="pickup.requestDate.label" default="Request Date" />
							</label>
								<span class="form-control" aria-labelledby="requestDate-label"><g:formatDate date="${pickupInstance?.requestDate}" /></span>
						</div>
					</div>
				</g:if>
			
				<g:if test="${pickupInstance?.nameOfRequester}">
					<div class="row">
                       	<div class="col-sm-4">
                          	<label for="requesterName">
								<g:message code="pickup.requesterName.label" default="Name Of Requester" />
							</label>
								<span class="form-control" aria-labelledby="requesterName-label"><g:fieldValue bean="${pickupInstance}" field="requesterName"/></span>
							<h3></h3>
						</div>
					</div>
					<h3></h3>
				</g:if>
			

			<g:form url="[resource:pickupInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${pickupInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger " action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
