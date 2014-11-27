package ssiwms2


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BillingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Billing.list(params), model: [billingInstanceCount: Billing.count()]
    }

    def show(Billing billingInstance) {
        respond billingInstance
    }

    def create() {
        respond new Billing(params)
    }

    @Transactional
    def save(Billing billingInstance) {
        if (billingInstance == null) {
            notFound()
            return
        }

        if (billingInstance.hasErrors()) {
            respond billingInstance.errors, view: 'create'
            return
        }

        billingInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'billing.label', default: 'Billing'), billingInstance.id])
                redirect billingInstance
            }
            '*' { respond billingInstance, [status: CREATED] }
        }
    }

    def edit(Billing billingInstance) {
        respond billingInstance
    }

    @Transactional
    def update(Billing billingInstance) {
        if (billingInstance == null) {
            notFound()
            return
        }

        if (billingInstance.hasErrors()) {
            respond billingInstance.errors, view: 'edit'
            return
        }

        billingInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Billing.label', default: 'Billing'), billingInstance.id])
                redirect billingInstance
            }
            '*' { respond billingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Billing billingInstance) {

        if (billingInstance == null) {
            notFound()
            return
        }

        billingInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Billing.label', default: 'Billing'), billingInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'billing.label', default: 'Billing'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
