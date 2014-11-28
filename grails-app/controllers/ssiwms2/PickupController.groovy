package ssiwms2


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PickupController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pickup.list(params), model: [pickupInstanceCount: Pickup.count()]

        def allClient = Client.list()
        [allClient: allClient]
    }

    def show(Pickup pickupInstance) {
        respond pickupInstance
    }

    def create() {
        respond new Pickup(params)

    }

    @Transactional
    def save(Pickup pickupInstance) {
        if (pickupInstance == null) {
            notFound()
            return
        }

        if (pickupInstance.hasErrors()) {
            respond pickupInstance.errors, view: 'create'
            return
        }

        pickupInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pickup.label', default: 'Pickup'), pickupInstance.id])
                redirect pickupInstance
            }
            '*' { respond pickupInstance, [status: CREATED] }
        }
    }

    def edit(Pickup pickupInstance) {
        respond pickupInstance
    }

    @Transactional
    def update(Pickup pickupInstance) {
        if (pickupInstance == null) {
            notFound()
            return
        }

        if (pickupInstance.hasErrors()) {
            respond pickupInstance.errors, view: 'edit'
            return
        }

        pickupInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pickup.label', default: 'Pickup'), pickupInstance.id])
                redirect pickupInstance
            }
            '*' { respond pickupInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pickup pickupInstance) {

        if (pickupInstance == null) {
            notFound()
            return
        }

        pickupInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pickup.label', default: 'Pickup'), pickupInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pickup.label', default: 'Pickup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
