package brainsoup

class LoginController {
    def index() {
        if(session.Account) {
            redirect(controller:'member',action:'profile')
        }
    }
    def doLogin ={
        def user = Account.findWhere(username:params['username'],password:params['password'])
        session.Account = user
        def currentProjectId = 0
        session.Member = Member.findByUser(session.Account)
        if (user){
            redirect(controller:'member',action:'profile')
            flash.message = "Login erfolgreich"
        }
        else{
            redirect(controller:'login',action:'index')
            flash.message = "Da lief irgendetwas falsche :( "
        }
    }
    def logout ={
        if(session.Account != null)
        {
            session.user=null
            redirect(action:'doLogin', controller: 'login')
        }
    }
}
