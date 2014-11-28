<%@ page import="ssiwms2.Department" %>

<div class="row">
	<div class="col-sm-4">
		<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'client', 'error')} required">
			<label for="client">
				<g:message code="department.client.label" default="Client" />
				<span class="required-indicator">*</span>
			</label>
			<ui:multiSelect id="client" name="client.id" from="${ssiwms2.Client.list()}" optionKey="id"  value="${departmentInstance?.client?.id}"/>

		</div>
	</div>
</div>


<div class="row">
	<div class="col-sm-4">
		<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'clientCode', 'error')} required">
			<label for="clientCode">
				<g:message code="department.clientCode.label" default="Client Code" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control" name="clientCode" required="" value="${departmentInstance?.clientCode}"/>

		</div>
	</div>
</div>

<div class="row">
	<div class="col-sm-4">
		<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'departmentCode', 'error')} required">
			<label for="departmentCode">
				<g:message code="department.departmentCode.label" default="Department Code" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control" name="departmentCode" required="" value="${departmentInstance?.departmentCode}"/>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-sm-4">
		<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'departmentName', 'error')} required">
			<label for="departmentName">
				<g:message code="department.departmentName.label" default="Department Name" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control" name="departmentName" required="" value="${departmentInstance?.departmentName}"/>
			<h3></h3>
		</div>
	</div>
</div>


