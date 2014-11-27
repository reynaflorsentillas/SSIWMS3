
<%@ page import="ssiwms2.Location" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-location" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-location" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list location">
			
				<g:if test="${locationInstance?.item}">
				<li class="fieldcontain">
					<span id="item-label" class="property-label"><g:message code="location.item.label" default="Item" /></span>
					
						<span class="property-value" aria-labelledby="item-label"><g:link controller="item" action="show" id="${locationInstance?.item?.id}">${locationInstance?.item?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.locationCode}">
				<li class="fieldcontain">
					<span id="locationCode-label" class="property-label"><g:message code="location.locationCode.label" default="Location Code" /></span>
					
						<span class="property-value" aria-labelledby="locationCode-label"><g:fieldValue bean="${locationInstance}" field="locationCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.locationName}">
				<li class="fieldcontain">
					<span id="locationName-label" class="property-label"><g:message code="location.locationName.label" default="Location Name" /></span>
					
						<span class="property-value" aria-labelledby="locationName-label"><g:fieldValue bean="${locationInstance}" field="locationName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${locationInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="location.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${locationInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:locationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${locationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
