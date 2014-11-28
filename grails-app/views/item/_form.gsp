<%@ page import="ssiwms2.Item" %>


<div class = "row">
	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'batchCode', 'error')} required">
			<label for="batchCode">
				<g:message code="item.batchCode.label" default="Batch Code" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class = "form-control" name="batchCode" required="" value="${itemInstance?.batchCode}"/>
		</div>
	</div>
</div>

<div class="row">
	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'description', 'error')} required">
			<label for="description">
				<g:message code="item.description.label" default="Description" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class = "form-control" name="description" required="" value="${itemInstance?.description}"/>
		</div>
	</div>
</div>

<div class="row">
	<div class = "col-sm-6">
	<h3></h3>
	</div>
</div>

<div class = "row">
	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'retention', 'error')} required">
			<label for="retention">
				<g:message code="item.retention.label" default="Retention" />
				<span class="required-indicator">*</span>
			</label>
			<calendar:datePicker name="retention" defaultValue="${new Date()}" value="${itemInstance?.retention}"/>
		</div>
	</div>
</div>

<div class="row">
	<div class = "col-sm-6">
		<h3></h3>
	</div>
</div>

<div class = "row">
	<div class = "col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'department', 'error')} required">
			<label for="department">
				<g:message code="item.department.label" default="Department" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class = "form-control" name="department" required="" value="${itemInstance?.department}"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="item.location.label" default="Location" />

	</label>

	<ul class="one-to-many">
		<g:each in="${itemInstance?.location?}" var="l">
			<li><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
		</g:each>
		<li class="add">
			<g:link controller="location" action="create" params="['item.id': itemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'location.label', default: 'Location')])}</g:link>
		</li>
	</ul>

</div>


</div>
<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'pickup', 'error')} required">
	<label for="pickup">
		<g:message code="item.pickup.label" default="Pickup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pickup" name="pickup.id" from="${ssiwms2.Pickup.list()}" optionKey="id" required="" value="${itemInstance?.pickup?.id}" class="many-to-one"/>

</div>

<div class="row">
	<div class = "col-sm-6">
		<h3></h3>
	</div>
</div>

<%--
<div class="fieldcontain ${hasErrors(bean: itemInstance, field: 'retrieval', 'error')} required">
	<label for="retrieval">
		<g:message code="item.retrieval.label" default="Retrieval" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="retrieval" name="retrieval.id" from="${ssiwms2.Retrieval.list()}" optionKey="id" required="" value="${itemInstance?.retrieval?.id}" class="many-to-one"/>

</div>
--%>




