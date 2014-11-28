package ssiwms2


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PackingListController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PackingList.list(params), model: [packingListInstanceCount: PackingList.count()]
    }

    def show(PackingList packingListInstance) {
        respond packingListInstance
    }

    def create() {
        respond new PackingList(params)
    }

    @Transactional
    def save(PackingList packingListInstance) {
        if (packingListInstance == null) {
            notFound()
            return
        }

        if (packingListInstance.hasErrors()) {
            respond packingListInstance.errors, view: 'create'
            return
        }

        packingListInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'packingList.label', default: 'PackingList'), packingListInstance.id])
                redirect packingListInstance
            }
            '*' { respond packingListInstance, [status: CREATED] }
        }
    }

    def edit(PackingList packingListInstance) {
        respond packingListInstance
    }

    @Transactional
    def update(PackingList packingListInstance) {
        if (packingListInstance == null) {
            notFound()
            return
        }

        if (packingListInstance.hasErrors()) {
            respond packingListInstance.errors, view: 'edit'
            return
        }

        packingListInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PackingList.label', default: 'PackingList'), packingListInstance.id])
                redirect packingListInstance
            }
            '*' { respond packingListInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PackingList packingListInstance) {

        if (packingListInstance == null) {
            notFound()
            return
        }

        packingListInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PackingList.label', default: 'PackingList'), packingListInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'packingList.label', default: 'PackingList'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
