<%@ page import="ssiwms2.PackingList" %>


<div class = "row">
    <div class = "col-sm-6">
        <div class="fieldcontain ${hasErrors(bean: packingListInstance, field: 'barCode', 'error')} ">
          <label for="barCode">
             <g:message code="packingList.barCode.label" default="Bar Code"/>

          </label>
             <g:textField class = "form-control" name="barCode" value="${packingListInstance?.barCode}"/>
        </div>
    </div>
         <div class = "col-sm-6">
            <div class="fieldcontain ${hasErrors(bean: packingListInstance, field: 'batchCode', 'error')} required">
                <label for="batchCode">
                     <g:message code="packingList.batchCode.label" default="Batch Code"/>
                      <span class="required-indicator">*</span>
                     </label>
                      <g:textField class = "form-control" name="batchCode" required="" value="${packingListInstance?.batchCode}"/>
            </div>
        </div>
</div>

<div class = "row">
    <div class = "col-sm-6">
        <div class="fieldcontain ${hasErrors(bean: packingListInstance, field: 'description', 'error')} required">
            <label for="description">
                <g:message code="packingList.description.label" default="Description"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textField class = "form-control" name="description" required="" value="${packingListInstance?.description}"/>

        </div>
    </div>


    <div class = "col-sm-6">
        <div class="fieldcontain ${hasErrors(bean: packingListInstance, field: 'department', 'error')} required">
            <label for="department">
                <g:message code="packingList.department.label" default="Department"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textField class = "form-control" name="department" required="" value="${packingListInstance?.department}"/>
        </div>
    </div>
</div>

<div class = "row">
    <div class = "col-sm-6">
        <div class="fieldcontain ${hasErrors(bean: packingListInstance, field: 'status', 'error')} required">
            <label for="status">
                <g:message code="packingList.status.label" default="Status"/>
                <span class="required-indicator">*</span>
            </label>
            <g:textField class = "form-control" name="status" required="" value="${packingListInstance?.status}"/>
        </div>
    </div>
    <div class = "col-sm-6">
        <div class="fieldcontain ${hasErrors(bean: packingListInstance, field: 'pickedUp', 'error')} ">
            <label for="pickedUp">
                <g:message code="packingList.pickedUp.label" default="Picked Up"/>

            </label>
            <g:textField class = "form-control" name="pickedUp" value="${packingListInstance?.pickedUp}"/>
            <h3></h3>
        </div>
    </div>
</div>

<div class = "row">
    <div class = "col-sm-6">
        <div class="fieldcontain ${hasErrors(bean: packingListInstance, field: 'pickup', 'error')} required">
            <label for="pickup">
                <g:message code="packingList.pickup.label" default="Pickup"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select id="pickup" name="pickup.id" from="${ssiwms2.Pickup.list()}" optionKey="id" required=""
                      value="${packingListInstance?.pickup?.id}" class="many-to-one"/>
        </div>
    </div>
    <div class = "col-sm-6">
        <div class="fieldcontain ${hasErrors(bean: packingListInstance, field: 'retention', 'error')} required">
            <label for="retention">
                <g:message code="packingList.retention.label" default="Retention"/>
                <span class="required-indicator">*</span>
            </label>
            <calendar:datePicker name="retention" defaultValue="${new Date()}" value="${packingListInstance?.retention}"/>
            <h3></h3>
        </div>
    </div>
</div>