<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Accounting</title>
</head>

<body>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h4>Accounting</h4>
        </div>
            <div class="panel-body">

                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <table class = "table table-bordered">
                    <thead class="th">
                    <tr>
                        <g:sortableColumn class = "small" property="billNo" title="${message(code: 'billing.billNo.label', default: 'Bill No')}" />

                        <g:sortableColumn class = "small" property="status" title="${message(code: 'billing.status.label', default: 'Status')}" />

                        <g:sortableColumn class = "small" property="rate" title="${message(code: 'billing.rate.label', default: 'Rate')}" />

                        <g:sortableColumn class = "small" property="total" title="${message(code: 'billing.total.label', default: 'Total')}" />

                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${billingInstanceList}" status="i" var="billingInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                            <td><g:link action="show" id="${billingInstance.id}">${fieldValue(bean: billingInstance, field: "billNo")}</g:link></td>

                            <td>${fieldValue(bean: billingInstance, field: "status")}</td>

                            <td>${fieldValue(bean: billingInstance, field: "rate")}</td>

                            <td>${fieldValue(bean: billingInstance, field: "total")}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>


                <fieldset class="button"">
                    <g:submitButton name="create" class="btn btn-danger" value="test"></g:submitButton>
                    <g:submitButton name="create" class="btn btn-success" value="test2"></g:submitButton>
                </fieldset>

            </div>
    </div>

</body>
</html>