import brainsoup.*

class BootStrap {

    def init = { servletContext ->
        new Account(username: "Simongotnews", password: "Computer").save()
        new Member(title: "Herr",firstName: "Simon", lastName: "Huebner", dateOfBirth: new java.util.Date()-1, email: "s.huebner94@gmx.de", user: 1 ).save()
        new Project(name: "RoboPi", rating: "0", shortDescription: "ferngesteuerter Roboter mit Coilgun.", genre: "electronic", recension: "gut gemacht.", written:  new java.util.Date()-1, member: 1).save()
        new ProjectPage(longDescription: "Das Chassis muss gebaut werden, damit wir grob wissen was wie und wo hinein passt.", instructions: "1. Gehaeuse besorgen. 2. Zusammenbauen. 3.Bauteile einlegen.", picture: "/sbadmin/images/Brainsoup_LOGO_25x44.png", project: 1).save()
    }
    def destroy = {
    }
}
