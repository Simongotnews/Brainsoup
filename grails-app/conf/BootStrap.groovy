import brainsoup.Account

class BootStrap {

    def init = { servletContext ->
        new Account(username: "Simongotnews", password: "Computer").save()
    }
    def destroy = {
    }
}
