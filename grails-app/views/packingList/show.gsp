<%@ page import="ssiwms2.PackingList" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'packingList.label', default: 'PackingList')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-packingList" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-packingList" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list packingList">

        <g:if test="${packingListInstance?.barCode}">
            <li class="fieldcontain">
                <span id="barCode-label" class="property-label"><g:message code="packingList.barCode.label"
                                                                           default="Bar Code"/></span>

                <span class="property-value" aria-labelledby="barCode-label"><g:fieldValue bean="${packingListInstance}"
                                                                                           field="barCode"/></span>

            </li>
        </g:if>

        <g:if test="${packingListInstance?.batchCode}">
            <li class="fieldcontain">
                <span id="batchCode-label" class="property-label"><g:message code="packingList.batchCode.label"
                                                                             default="Batch Code"/></span>

                <span class="property-value" aria-labelledby="batchCode-label"><g:fieldValue
                        bean="${packingListInstance}" field="batchCode"/></span>

            </li>
        </g:if>

        <g:if test="${packingListInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label"><g:message code="packingList.description.label"
                                                                               default="Description"/></span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue
                        bean="${packingListInstance}" field="description"/></span>

            </li>
        </g:if>

        <g:if test="${packingListInstance?.retention}">
            <li class="fieldcontain">
                <span id="retention-label" class="property-label"><g:message code="packingList.retention.label"
                                                                             default="Retention"/></span>

                <span class="property-value" aria-labelledby="retention-label"><g:formatDate
                        date="${packingListInstance?.retention}"/></span>

            </li>
        </g:if>

        <g:if test="${packingListInstance?.department}">
            <li class="fieldcontain">
                <span id="department-label" class="property-label"><g:message code="packingList.department.label"
                                                                              default="Department"/></span>

                <span class="property-value" aria-labelledby="department-label"><g:fieldValue
                        bean="${packingListInstance}" field="department"/></span>

            </li>
        </g:if>

        <g:if test="${packingListInstance?.status}">
            <li class="fieldcontain">
                <span id="status-label" class="property-label"><g:message code="packingList.status.label"
                                                                          default="Status"/></span>

                <span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${packingListInstance}"
                                                                                          field="status"/></span>

            </li>
        </g:if>

        <g:if test="${packingListInstance?.pickedUp}">
            <li class="fieldcontain">
                <span id="pickedUp-label" class="property-label"><g:message code="packingList.pickedUp.label"
                                                                            default="Picked Up"/></span>

                <span class="property-value" aria-labelledby="pickedUp-label"><g:fieldValue
                        bean="${packingListInstance}" field="pickedUp"/></span>

            </li>
        </g:if>

        <g:if test="${packingListInstance?.pickup}">
            <li class="fieldcontain">
                <span id="pickup-label" class="property-label"><g:message code="packingList.pickup.label"
                                                                          default="Pickup"/></span>

                <span class="property-value" aria-labelledby="pickup-label"><g:link controller="pickup" action="show"
                                                                                    id="${packingListInstance?.pickup?.id}">${packingListInstance?.pickup?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: packingListInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${packingListInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
