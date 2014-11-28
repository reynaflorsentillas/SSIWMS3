<%@ page import="ssiwms2.PickLIst" %>



<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'barCode', 'error')} ">
	<label for="barCode">
		<g:message code="pickLIst.barCode.label" default="Bar Code" />
		
	</label>
	<g:textField name="barCode" value="${pickLIstInstance?.barCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'pickedUp', 'error')} ">
	<label for="pickedUp">
		<g:message code="pickLIst.pickedUp.label" default="Picked Up" />
		
	</label>
	<g:textField name="pickedUp" value="${pickLIstInstance?.pickedUp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'batchCode', 'error')} required">
	<label for="batchCode">
		<g:message code="pickLIst.batchCode.label" default="Batch Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="batchCode" required="" value="${pickLIstInstance?.batchCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="pickLIst.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="department" required="" value="${pickLIstInstance?.department}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="pickLIst.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${pickLIstInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'retention', 'error')} required">
	<label for="retention">
		<g:message code="pickLIst.retention.label" default="Retention" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="retention" precision="day"  value="${pickLIstInstance?.retention}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'retrieval', 'error')} required">
	<label for="retrieval">
		<g:message code="pickLIst.retrieval.label" default="Retrieval" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="retrieval" name="retrieval.id" from="${ssiwms2.Retrieval.list()}" optionKey="id" required="" value="${pickLIstInstance?.retrieval?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="pickLIst.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${pickLIstInstance?.status}"/>

</div>

