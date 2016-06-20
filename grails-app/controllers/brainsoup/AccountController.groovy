package brainsoup

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import org.codehaus.groovy.grails.web.util.WebUtils

@Transactional(readOnly = true)
class AccountController {

    def login = {
    }

    def register = {


    }

    def authenticate = {
        def Account = Account.findByUsernameAndPassword(params.username, params.password)

        if(Account){
            java.util.Date d = new java.util.Date(session.getLastAccessedTime())    // Datum des letzten Besuchs.
            session.Account = Account;                                              // der Session den Aktuellen Account zuweisen.
            session.Member  = Member.findByUser(session.Account)                    // ueber Account den Member der Session zuweisen
            session.Project = Project.findByMember(session.Member)                   // uber Member die Project(e) zuweisen

            flash.message = "Hallo, ${Account.username}! (Zuletzt eingeloggt: ${d}) "
            Account.setActive(true)
            Account.save()
            redirect(controller:"member", action:"index")
        }else{
            flash.message = "Entschuldigung, ${params.username}. Versuche es nocheinmal."
            redirect(action:"login")        //normal: action:"login"
        }
    }

    def logout = {
        if(session == null){
            redirect(controller:"account", action:"login")
        }
        if(session.Account != null) {
            flash.message = "Goodbye ${session.Account.username}"
            //session.Account.setActive(false);
            session.Account = null;
            redirect(controller: "account", action: "login")
        }
    }

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Account.list(params), model:[accountInstanceCount: Account.count()]
    }

    def show(Account accountInstance) {
        flash.message = "Profil von ${session.Account.username}"
        respond accountInstance
    }

    def create(){
        //session.Member.user = respond Project(params)
        respond new Account(params)

        //redirect(controller:"member", action:"index")
    }

    @Transactional
    def save(Account accountInstance) {
        if (accountInstance == null) {
            notFound()
            return
        }

        if (accountInstance.hasErrors()) {
            respond accountInstance.errors, view:'create'
            return
        }

        accountInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'account.label', default: 'Account'), accountInstance.id])
                redirect accountInstance
            }
            '*' { respond accountInstance, [status: CREATED] }
        }
    }

    def edit(Account accountInstance) {
        respond accountInstance
    }

    @Transactional
    def update(Account accountInstance) {
        if (accountInstance == null) {
            notFound()
            return
        }

        if (accountInstance.hasErrors()) {
            respond accountInstance.errors, view:'edit'
            return
        }

        accountInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Account.label', default: 'Account'), accountInstance.id])
                redirect accountInstance
            }
            '*'{ respond accountInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Account accountInstance) {

        if (accountInstance == null) {
            notFound()
            return
        }

        accountInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Account.label', default: 'Account'), accountInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
