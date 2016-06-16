package brainsoup

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountController {

    def login = {
    }

    def register = {


    }

    def authenticate = {
        def Account = Account.findByUsernameAndPassword(params.username, params.password)

        if(Account){
            java.util.Date d = new java.util.Date(session.getLastAccessedTime())
            session.Account = Account;
            flash.message = "Hallo, ${Account.username}! (Zuletzt eingeloggt: ${d}) "
            Account.setActive(true)
            Account.save()

            redirect(controller:"account", action:"index")
        }else{
            flash.message = "Entschuldigung, ${params.username}. Versuche es nocheinmal."
            redirect(action:"login")        //normal: action:"login"
        }
    }

    def logout = {
        flash.message = "Goodbye ${session.Account.username}"
        //session.Account.setActive(false);
        session.Account = null;
        redirect(controller:"account", action:"login")
    }

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Account.list(params), model:[accountInstanceCount: Account.count()]
    }

    def show(Account accountInstance) {
        respond accountInstance
    }

    def create(){
        def newAccount =  new Account(params)
        newAccount.save()
        redirect(controller:"member", action:"create")
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
