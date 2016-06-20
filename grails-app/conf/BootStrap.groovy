import brainsoup.*

class BootStrap {

    def init = { servletContext ->
        new Account(username: "Simongotnews", password: "Computer").save()
        new Member(title: "Herr",firstName: "Simon", lastName: "Huebner", dateOfBirth: new java.util.Date()-1, email: "s.huebner94@gmx.de", user: 1 ).save()

        new Project(name: "RoboPi", rating: "4-5", shortDescription: "ferngesteuerter Roboter mit Coilgun.", genre: "electronic", recension: "gut gemacht.", written:  new java.util.Date()-1, member: 1).save()
            new ProjectPage(longDescription: "Das Chassis muss gebaut werden, damit wir grob wissen was wie und wo hinein passt.", instructions: "1. Gehaeuse besorgen. 2. Zusammenbauen. 3.Bauteile einlegen.", picture: "/sbadmin/images/Brainsoup_LOGO_25x44.png", project: 1).save()
            new ProjectPage(longDescription: "Nun muss alles korrekt miteinander verbunden werden.", instructions: "(Tipp: benutze ein Multimeter/Durchgangsprüfer um die richtigen Kabel zu finden...)", picture: "/sbadmin/images/Brainsoup_LOGO_25x44.png", project: 1).save()

        new Project(name: "KameraBuddy", rating: "3", shortDescription: "kleiner elktronischer Assistent für Fotografen", genre: "electronic", recension: "Nettes Tool!", written:  new java.util.Date()-2, member: 1).save()
            new ProjectPage(longDescription: "Ein grober Plan/UML muss erstellt werden damit im anschluss in EAGLE o.ä. die PCB entworfen werden kann.", instructions: "1. Brainstorm 2. UML  3. PCB erstellen", picture: "/sbadmin/images/Brainsoup_LOGO_25x44.png", project: 2).save()
            new ProjectPage(longDescription: "Bauteile einsetzen und verkabeln", instructions: "(Tipp: benutze ein Multimeter/Durchgangsprüfer um die richtigen Kabel zu finden...)", picture: "/sbadmin/images/Brainsoup_LOGO_25x44.png", project: 2).save()
            new ProjectPage(longDescription: "Software", instructions: "Die software besteht aus einer Menueunterteilung und mehreren sehr kurzen Interrupts", picture: "/sbadmin/images/Brainsoup_LOGO_25x44.png", project: 2).save()

    }
    def destroy = {
    }
}
