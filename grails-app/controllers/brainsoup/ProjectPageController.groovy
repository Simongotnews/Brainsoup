package brainsoup

import grails.util.Holders
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProjectPageController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProjectPage.list(params), model:[projectPageInstanceCount: ProjectPage.count()]
    }

    def show(ProjectPage projectPageInstance) {
        respond projectPageInstance
    }

    def create() {
        respond new ProjectPage(params)
    }

    @Transactional
    def save(ProjectPage projectPageInstance) {
        if (projectPageInstance == null) {
            notFound()
            return
        }

        if (projectPageInstance.hasErrors()) {
            respond projectPageInstance.errors, view:'create'
            return
        }
/* Aenderungen ab hier */

        def grailsApplication = Holders.getGrailsApplication()

        projectPageInstance.project = Project.findById(grailsApplication.config.currentProjectId)

/*                      */
        projectPageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'projectPage.label', default: 'ProjectPage'), projectPageInstance.id])
                redirect projectPageInstance
            }
            '*' { respond projectPageInstance, [status: CREATED] }
        }
    }

    def edit(ProjectPage projectPageInstance) {
        respond projectPageInstance
    }

    @Transactional
    def update(ProjectPage projectPageInstance) {
        if (projectPageInstance == null) {
            notFound()
            return
        }

        if (projectPageInstance.hasErrors()) {
            respond projectPageInstance.errors, view:'edit'
            return
        }

        projectPageInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProjectPage.label', default: 'ProjectPage'), projectPageInstance.id])
                redirect projectPageInstance
            }
            '*'{ respond projectPageInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProjectPage projectPageInstance) {

        if (projectPageInstance == null) {
            notFound()
            return
        }

        projectPageInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProjectPage.label', default: 'ProjectPage'), projectPageInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectPage.label', default: 'ProjectPage'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
