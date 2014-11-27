<%@ page import="ssiwms2.Report" %>

<div class = "row">
	<div class = "col-sm-6 ">
		<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'reportDate', 'error')} required">
			<label for="reportDate">
				<g:message code="report.reportDate.label" default="Report Date" />
				<span class="required-indicator">*</span>
			</label>
			<g:datePicker class="form-control"  name="reportDate" precision="day"  value="${reportInstance?.reportDate}"  />
		</div>
	</div>
</div>

<div class = "row">
	<div class = "col-sm-3 ">
		<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'remarks', 'error')} required">
			<label for="remarks">
				<g:message code="report.remarks.label" default="Remarks" />
				<span class="required-indicator">*</span>
			</label>
				<g:textField class="form-control" name="remarks" required="" value="${reportInstance?.remarks}"/>
		</div>
	</div>
</div>

<div class = "row">
	<div class = "col-sm-3 ">
		<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'reporType', 'error')} required">
			<label for="reporType">
				<g:message code="report.reporType.label" default="Report Type" />
				<span class="required-indicator">*</span>
			</label>
				<g:textField class="form-control" name="reporType" required="" value="${reportInstance?.reporType}"/>
		</div>
	</div>
</div>
	</div>
</div>

<div class = "row">
	<div class = "col-sm-3 ">
		<div class="fieldcontain ${hasErrors(bean: reportInstance, field: 'reportID', 'error')} required">
			<label for="reportID">
				<g:message code="report.reportID.label" default="Report ID" />
				<span class="required-indicator">*</span>
			</label>
				<g:field class="form-control" name="reportID" type="number" value="${reportInstance.reportID}" required=""/>
			<h3></h3>
		</div>
	</div>
</div>
	</div>
</div>
