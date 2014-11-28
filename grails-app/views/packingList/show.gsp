<%@ page import="ssiwms2.PackingList" %>
<!DOCTYPE html>
<html>
<head>

    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'packingList.label', default: 'Packing')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>
<body>

<div class="panel panel-default">
    <div class="panel-heading">
        <h4>Show Packing</h4>
    </div>
    <div class="panel-body">

        <div id="show-pickup" class="content scaffold-show" role="main">
            <div class="nav" role="navigation">
                <fieldset class="button">
                    <g:link class="btn btn-default btn-sm" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link>
                    <g:link class="btn btn-default btn-sm" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link>
                    <h1></h1>
                </fieldset>
            </div>


                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>


                    <g:if test="${packingListInstance?.barCode}">
                        <div class="row">
                          <div class="col-sm-6">
                              <label for="barCode">
                              <g:message code="packingList.barCode.label" default="Bar Code"/>
                              </label>
                              <span class="form-control" aria-labelledby="barCode-label"><g:fieldValue bean="${packingListInstance}" field="barCode"/></span>
                              <h1></h1>
                           </div>
                        </div>
        </g:if>

            <g:if test="${packingListInstance?.batchCode}">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="batchCode">
                            <g:message code="packingList.batchCode.label" default="Batch Code"/>
                        </label>
                        <span class="form-control" aria-labelledby="batchCode-label"><g:fieldValue
                                bean="${packingListInstance}" field="batchCode"/></span>
                        <h1></h1>
                    </div>
                </div>
            </g:if>

            <g:if test="${packingListInstance?.description}">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="description">
                            <g:message code="packingList.description.label" default="Description"/>
                        </label>
                        <span class="form-control" aria-labelledby="description-label"><g:fieldValue
                                bean="${packingListInstance}" field="description"/></span>
                        <h1></h1>
                    </div>
                </div>
            </g:if>

            <g:if test="${packingListInstance?.retention}">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="retention">
                            <g:message code="packingList.retention.label" default="Retention"/>
                        </label>
                        <span class="form-control" aria-labelledby="retention-label"><g:formatDate
                                date="${packingListInstance?.retention}"/></span>
                        <h1></h1>
                    </div>
                </div>
            </g:if>

            <g:if test="${packingListInstance?.department}">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="department">
                            <g:message code="packingList.department.label" default="Department"/>
                        </label>
                        <span class="form-control" aria-labelledby="department-label"><g:fieldValue
                                bean="${packingListInstance}" field="department"/></span>
                        <h1></h1>
                    </div>
                </div>
            </g:if>

            <g:if test="${packingListInstance?.status}">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="status">
                            <g:message code="packingList.status.label" default="Status"/>
                        </label>
                        <span class="form-control"aria-labelledby="status-label"><g:fieldValue bean="${packingListInstance}" field="status"/></span>
                        <h1></h1>
                    </div>
                </div>
            </g:if>

            <g:if test="${packingListInstance?.pickedUp}">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="pickedUp">
                            <g:message code="packingList.pickedUp.label" default="Picked Up"/>
                        </label>
                        <span class="form-control" aria-labelledby="pickedUp-label"><g:fieldValue
                                bean="${packingListInstance}" field="pickedUp"/></span>
                        <h1></h1>
                    </div>
                </div>
            </g:if>

            <g:if test="${packingListInstance?.pickup}">
                <div class="row">
                    <div class="col-sm-6">
                        <label for="pickup">
                            <g:message code="packingList.pickup.label" default="Pickup"/>
                        </label>
                        <span class="form-control" aria-labelledby="pickup-label"><g:link controller="pickup" action="show" id="${packingListInstance?.pickup?.id}">${packingListInstance?.pickup?.encodeAsHTML()}</g:link></span>
                    <h3></h3>
                    </div>
                </div>
            </g:if>


    <g:form url="[resource: packingListInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="btn btn-primary" action="edit" resource="${packingListInstance}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</div>
</body>
</html>
