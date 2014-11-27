<%@ page import="ssiwms2.Billing" %>

<div class = "row">
    <div class = "col-sm-4">
        <div class="fieldcontain ${hasErrors(bean: billingInstance, field: 'billNo', 'error')} required">
	       <label for="billNo">
	          	<g:message code="billing.billNo.label" default="Bill No" />
	          	<span class="required-indicator">*</span>
	       </label>
            <g:textField class = "form-control" name="billNo" required="" value="${pickupInstance?.billNo}"/>
        </div>
    </div>

        <div class = "col-sm-4">
            <div class="fieldcontain ${hasErrors(bean: billingInstance, field: 'status', 'error')} required">
                <label for="status">
                    <g:message code="billing.status.label" default="status" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class = "form-control" name="status" required="" value="${pickupInstance?.status}"/>
            </div>
        </div>
</div>

<div class = "row">
        <div class = "col-sm-4">
            <div class="fieldcontain ${hasErrors(bean: billingInstance, field: 'rate', 'error')} required">
                <label for="rate">
                    <g:message code="billing.rate.label" default="rate" />
                    <span class="required-indicator">*</span>
                </label>
                <g:textField class = "form-control" name="rate" required="" value="${billingInstance?.rate}"/>
            </div>
        </div>

            <div class = "col-sm-4">
                <div class="fieldcontain ${hasErrors(bean: billingInstance, field: 'total', 'error')} required">
                    <label for="total">
		                <g:message code="billing.total.label" default="Total" />
		                <span class="required-indicator">*</span>
	                </label>
                    <g:textField class = "form-control" name="total" required="" value="${pickupInstance?.total}"/>
                </div>
            </div>
</div>

<div class = "row">
            <div class = "col-sm-4">
                <div class="fieldcontain ${hasErrors(bean: billingInstance, field: 'pickup', 'error')} required">
                    <label for="pickup">
                        <g:message code="billing.pickup.label" default="Pickup" />
                        <span class="required-indicator">*</span>
                    </label>
                    <g:textField class = "form-control" name="pickup" required="" value="${billingInstance?.pickup}"/>
                </div>
            </div>

                <div class = "col-sm-4">
                    <div class="fieldcontain ${hasErrors(bean: billingInstance, field: 'retrieval', 'error')} required">
                        <label for="retrieval">
                            <g:message code="billing.retrieval.label" default="Retrieval" />
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField class = "form-control" name="retrieval" required="" value="${billingInstance?.retrieval}"/>
                    </div>
                </div>
</div>

<div class = "row">
                <div class = "col-sm-4">
                    <div class="fieldcontain ${hasErrors(bean: billingInstance, field: 'reports', 'error')} ">
                        <label for="reports">
                            <g:message code="billing.reports.label" default="Reports" />
                            <span class="required-indicator">*</span
                        </label>
                        <g:textField class = "form-control" name="reports" required="" value="${billingInstance?.reports}"/>
                    </div>
                </div>
            </div>