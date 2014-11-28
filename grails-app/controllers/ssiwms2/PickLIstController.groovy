package ssiwms2


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PickLIstController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PickLIst.list(params), model: [pickLIstInstanceCount: PickLIst.count()]
    }

    def show(PickLIst pickLIstInstance) {
        respond pickLIstInstance
    }

    def create() {
        respond new PickLIst(params)
    }

    @Transactional
    def save(PickLIst pickLIstInstance) {
        if (pickLIstInstance == null) {
            notFound()
            return
        }

        if (pickLIstInstance.hasErrors()) {
            respond pickLIstInstance.errors, view: 'create'
            return
        }

        pickLIstInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pickLIst.label', default: 'PickLIst'), pickLIstInstance.id])
                redirect pickLIstInstance
            }
            '*' { respond pickLIstInstance, [status: CREATED] }
        }
    }

    def edit(PickLIst pickLIstInstance) {
        respond pickLIstInstance
    }

    @Transactional
    def update(PickLIst pickLIstInstance) {
        if (pickLIstInstance == null) {
            notFound()
            return
        }

        if (pickLIstInstance.hasErrors()) {
            respond pickLIstInstance.errors, view: 'edit'
            return
        }

        pickLIstInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PickLIst.label', default: 'PickLIst'), pickLIstInstance.id])
                redirect pickLIstInstance
            }
            '*' { respond pickLIstInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PickLIst pickLIstInstance) {

        if (pickLIstInstance == null) {
            notFound()
            return
        }

        pickLIstInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PickLIst.label', default: 'PickLIst'), pickLIstInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pickLIst.label', default: 'PickLIst'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
