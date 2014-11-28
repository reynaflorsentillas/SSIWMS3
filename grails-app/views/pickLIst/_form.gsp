<%@ page import="ssiwms2.PickLIst" %>


<div class="row">
<div class="col-sm-4">
	<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'retrieval', 'error')} required">
		<label for="retrieval">
			<g:message code="pickLIst.retrieval.label" default="Retrieval" />
			<span class="required-indicator">*</span>
		</label>
		<g:select id="retrieval" name="retrieval.id" from="${ssiwms2.Retrieval.list()}" optionKey="id" required="" value="${pickLIstInstance?.retrieval?.id}" class="many-to-one"/>
	</div>
</div>
</div>

<div class="row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'barCode', 'error')} ">
			<label for="barCode">
				<g:message code="pickLIst.barCode.label" default="Bar Code" />
			</label>
			<g:textField class="form-control input-sm" name="barCode" value="${pickLIstInstance?.barCode}"/>
		</div>
	</div>
		<div class="col-sm-6">
				<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'batchCode', 'error')} required">
					<label for="batchCode">
						<g:message code="pickLIst.batchCode.label" default="Batch Code" />
						<span class="required-indicator">*</span>
					</label>
					<g:textField class="form-control input-sm" name="batchCode"  required="" value="${pickLIstInstance?.batchCode}"/>
			</div>
		</div>
	</div>

<div class= "row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'department', 'error')} required">
			<label for="department">
				<g:message code="pickLIst.department.label" default="Department" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control" name="department" required="" value="${pickLIstInstance?.department}"/>
		</div>
	</div>
		<div class="col-sm-6">
			<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'description', 'error')} required">
				<label for="description">
					<g:message code="pickLIst.description.label" default="Description" />
					<span class="required-indicator">*</span>
				</label>
				<g:textField class="form-control input-sm" name="description" required="" value="${pickLIstInstance?.description}"/>
			</div>
		</div>
	</div>

<div class="row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'status', 'error')} required">
			<label for="status">
				<g:message code="pickLIst.status.label" default="Status" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField class="form-control input-sm" name="status" required="" value="${pickLIstInstance?.status}"/>
		</div>
	</div>
</div>

<h4></h4>
<div class="row">
	<div class="col-sm-6">
		<div class="fieldcontain ${hasErrors(bean: pickLIstInstance, field: 'retention', 'error')} required">
			<label for="retention">
				<g:message code="pickLIst.retention.label" default="Retention" />
				<span class="required-indicator">*</span>
			</label>
			<calendar:datePicker name="retention" defaultValue="${new Date()}"  value="${pickLIstInstance?.retention}"/>
		</div>
	</div>
</div>

<h3></h3>
