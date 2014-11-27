
<%@ page import="ssiwms2.Billing" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'billing.label', default: 'Billing')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-billing" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <div class="nav" role="navigation">
                <fieldset class = button>
                    <g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
                    <g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                </fieldset>
            </div>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list billing">
			
				<g:if test="${billingInstance?.billNo}">
				<li class="fieldcontain">
					<span id="billNo-label" class="property-label"><g:message code="billing.billNo.label" default="Bill No" /></span>
					
						<span class="property-value" aria-labelledby="billNo-label"><g:fieldValue bean="${billingInstance}" field="billNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billingInstance?.requestID}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="billing.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${billingInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billingInstance?.typeCode}">
				<li class="fieldcontain">
					<span id="rate-label" class="property-label"><g:message code="billing.rate.label" default="Rate" /></span>
					
						<span class="property-value" aria-labelledby="rate-label"><g:fieldValue bean="${billingInstance}" field="rate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billingInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="billing.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${billingInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billingInstance?.pickup}">
				<li class="fieldcontain">
					<span id="pickup-label" class="property-label"><g:message code="billing.pickup.label" default="Pickup" /></span>
					
						<span class="property-value" aria-labelledby="pickup-label"><g:link controller="pickup" action="show" id="${billingInstance?.pickup?.id}">${billingInstance?.pickup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${billingInstance?.reports}">
				<li class="fieldcontain">
					<span id="reports-label" class="property-label"><g:message code="billing.reports.label" default="Reports" /></span>
					
						<g:each in="${billingInstance.reports}" var="r">
						<span class="property-value" aria-labelledby="reports-label"><g:link controller="report" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${billingInstance?.retrieval}">
				<li class="fieldcontain">
					<span id="retrieval-label" class="property-label"><g:message code="billing.retrieval.label" default="Retrieval" /></span>
					
						<span class="property-value" aria-labelledby="retrieval-label"><g:link controller="retrieval" action="show" id="${billingInstance?.retrieval?.id}">${billingInstance?.retrieval?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:billingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-sm" action="edit" resource="${billingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<h3></h3>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
