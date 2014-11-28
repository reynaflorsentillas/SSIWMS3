
<%@ page import="ssiwms2.PickLIst" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pickLIst.label', default: 'PickLIst')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pickLIst" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pickLIst" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pickLIst">
			
				<g:if test="${pickLIstInstance?.barCode}">
				<li class="fieldcontain">
					<span id="barCode-label" class="property-label"><g:message code="pickLIst.barCode.label" default="Bar Code" /></span>
					
						<span class="property-value" aria-labelledby="barCode-label"><g:fieldValue bean="${pickLIstInstance}" field="barCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pickLIstInstance?.pickedUp}">
				<li class="fieldcontain">
					<span id="pickedUp-label" class="property-label"><g:message code="pickLIst.pickedUp.label" default="Picked Up" /></span>
					
						<span class="property-value" aria-labelledby="pickedUp-label"><g:fieldValue bean="${pickLIstInstance}" field="pickedUp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pickLIstInstance?.batchCode}">
				<li class="fieldcontain">
					<span id="batchCode-label" class="property-label"><g:message code="pickLIst.batchCode.label" default="Batch Code" /></span>
					
						<span class="property-value" aria-labelledby="batchCode-label"><g:fieldValue bean="${pickLIstInstance}" field="batchCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pickLIstInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="pickLIst.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:fieldValue bean="${pickLIstInstance}" field="department"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pickLIstInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="pickLIst.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${pickLIstInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pickLIstInstance?.retention}">
				<li class="fieldcontain">
					<span id="retention-label" class="property-label"><g:message code="pickLIst.retention.label" default="Retention" /></span>
					
						<span class="property-value" aria-labelledby="retention-label"><g:formatDate date="${pickLIstInstance?.retention}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pickLIstInstance?.retrieval}">
				<li class="fieldcontain">
					<span id="retrieval-label" class="property-label"><g:message code="pickLIst.retrieval.label" default="Retrieval" /></span>
					
						<span class="property-value" aria-labelledby="retrieval-label"><g:link controller="retrieval" action="show" id="${pickLIstInstance?.retrieval?.id}">${pickLIstInstance?.retrieval?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pickLIstInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="pickLIst.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${pickLIstInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pickLIstInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pickLIstInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
