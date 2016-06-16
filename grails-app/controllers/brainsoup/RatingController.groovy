package brainsoup

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RatingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Rating.list(params), model:[ratingInstanceCount: Rating.count()]
    }

    def show(Rating ratingInstance) {
        respond ratingInstance
    }

    def create() {
        respond new Rating(params)
    }

    @Transactional
    def save(Rating ratingInstance) {
        if (ratingInstance == null) {
            notFound()
            return
        }

        if (ratingInstance.hasErrors()) {
            respond ratingInstance.errors, view:'create'
            return
        }

        ratingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'rating.label', default: 'Rating'), ratingInstance.id])
                redirect ratingInstance
            }
            '*' { respond ratingInstance, [status: CREATED] }
        }
    }

    def edit(Rating ratingInstance) {
        respond ratingInstance
    }

    @Transactional
    def update(Rating ratingInstance) {
        if (ratingInstance == null) {
            notFound()
            return
        }

        if (ratingInstance.hasErrors()) {
            respond ratingInstance.errors, view:'edit'
            return
        }

        ratingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Rating.label', default: 'Rating'), ratingInstance.id])
                redirect ratingInstance
            }
            '*'{ respond ratingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Rating ratingInstance) {

        if (ratingInstance == null) {
            notFound()
            return
        }

        ratingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Rating.label', default: 'Rating'), ratingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'rating.label', default: 'Rating'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
