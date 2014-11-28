
<%@ page import="ssiwms2.Item" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-item" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-item" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list item">
			
				<g:if test="${itemInstance?.barCode}">
				<li class="fieldcontain">
					<span id="barCode-label" class="property-label"><g:message code="item.barCode.label" default="Bar Code" /></span>
					
						<span class="property-value" aria-labelledby="barCode-label"><g:fieldValue bean="${itemInstance}" field="barCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.batchCode}">
				<li class="fieldcontain">
					<span id="batchCode-label" class="property-label"><g:message code="item.batchCode.label" default="Batch Code" /></span>
					
						<span class="property-value" aria-labelledby="batchCode-label"><g:fieldValue bean="${itemInstance}" field="batchCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="item.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:fieldValue bean="${itemInstance}" field="department"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="item.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${itemInstance}" field="description"/></span>
					
				</li>
				</g:if>

			
				<g:if test="${itemInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="item.location.label" default="Location" /></span>
					
						<g:each in="${itemInstance.location}" var="l">
						<span class="property-value" aria-labelledby="location-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.locationCode}">
				<li class="fieldcontain">
					<span id="locationCode-label" class="property-label"><g:message code="item.locationCode.label" default="Location Code" /></span>
					
						<span class="property-value" aria-labelledby="locationCode-label"><g:fieldValue bean="${itemInstance}" field="locationCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.pickedUp}">
				<li class="fieldcontain">
					<span id="pickedUp-label" class="property-label"><g:message code="item.pickedUp.label" default="Picked Up" /></span>
					
						<span class="property-value" aria-labelledby="pickedUp-label"><g:fieldValue bean="${itemInstance}" field="pickedUp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.pickup}">
				<li class="fieldcontain">
					<span id="pickup-label" class="property-label"><g:message code="item.pickup.label" default="Pickup" /></span>
					
						<span class="property-value" aria-labelledby="pickup-label"><g:link controller="pickup" action="show" id="${itemInstance?.pickup?.id}">${itemInstance?.pickup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.retention}">
				<li class="fieldcontain">
					<span id="retention-label" class="property-label"><g:message code="item.retention.label" default="Retention" /></span>
					
						<span class="property-value" aria-labelledby="retention-label"><g:formatDate date="${itemInstance?.retention}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${itemInstance?.retrieval}">
				<li class="fieldcontain">
					<span id="retrieval-label" class="property-label"><g:message code="item.retrieval.label" default="Retrieval" /></span>
					
						<span class="property-value" aria-labelledby="retrieval-label"><g:link controller="retrieval" action="show" id="${itemInstance?.retrieval?.id}">${itemInstance?.retrieval?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:itemInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${itemInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
