package brainsoup

class LoginController {
    def index() {
        if(session.Account) {
            redirect(controller:'member',action:'index')
        }
    }
    def doLogin ={
        def user = Account.findWhere(username:params['username'],password:params['password'])
        session.Account = user
        if (user){
            redirect(controller:'login',action:'index')
            flash.message = "Login erfolgreich"
        }
        else{
            redirect(controller:'login',action:'index')
            flash.message = "Da lief irgendetwas falsche :(s"
        }
    }
    def logout ={
        session.user=null
        redirect(action:'index')
    }
}