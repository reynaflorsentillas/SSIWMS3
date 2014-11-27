package ssiwms2


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RetrievalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Retrieval.list(params), model: [retrievalInstanceCount: Retrieval.count()]
    }

    def show(Retrieval retrievalInstance) {
        respond retrievalInstance
    }

    def create() {
        respond new Retrieval(params)
    }

    @Transactional
    def save(Retrieval retrievalInstance) {
        if (retrievalInstance == null) {
            notFound()
            return
        }

        if (retrievalInstance.hasErrors()) {
            respond retrievalInstance.errors, view: 'create'
            return
        }

        retrievalInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'retrieval.label', default: 'Retrieval'), retrievalInstance.id])
                redirect retrievalInstance
            }
            '*' { respond retrievalInstance, [status: CREATED] }
        }
    }

    def edit(Retrieval retrievalInstance) {
        respond retrievalInstance
    }

    @Transactional
    def update(Retrieval retrievalInstance) {
        if (retrievalInstance == null) {
            notFound()
            return
        }

        if (retrievalInstance.hasErrors()) {
            respond retrievalInstance.errors, view: 'edit'
            return
        }

        retrievalInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Retrieval.label', default: 'Retrieval'), retrievalInstance.id])
                redirect retrievalInstance
            }
            '*' { respond retrievalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Retrieval retrievalInstance) {

        if (retrievalInstance == null) {
            notFound()
            return
        }

        retrievalInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Retrieval.label', default: 'Retrieval'), retrievalInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'retrieval.label', default: 'Retrieval'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
