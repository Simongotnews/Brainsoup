import brainsoup.Account
import brainsoup.Member

class BootStrap {

    def init = { servletContext ->
        new Account(username: "Simongotnews", password: "Computer").save()
        new Member(title: "Herr",firstName: "Simon", lastName: "Huebner", dateOfBirth: new java.util.Date()-1, email: "s.huebner94@gmx.de", user: 1 ).save()
    }
    def destroy = {
    }
}
