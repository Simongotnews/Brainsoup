import brainsoup.*

class BootStrap {

    def init = { servletContext ->
        new Account(username: "Simongotnews", password: "Computer").save()
            new Member(title: "Herr",firstName: "Simon", lastName: "Huebner", dateOfBirth: new java.util.Date()-7895, email: "s.huebner94@gmx.de", user: 1 ).save()
                new Project(name: "RoboPi", rating: "4.5", shortDescription: "ferngesteuerter Roboter mit Coilgun.", genre: "electronic", recension: "gut gemacht.", written:  new java.util.Date()-56, member: 1).save()
                    new ProjectPage(longDescription: "Das Chassis muss gebaut werden, damit wir grob wissen was wie und wo hinein passt.", instructions: "1. Gehaeuse besorgen. 2. Zusammenbauen. 3.Bauteile einlegen.", picture: "/sbadmin/images/RoboPi_3.JPG", project: 1).save()
                    new ProjectPage(longDescription: "Nun muss alles korrekt miteinander verbunden werden.", instructions: "(Tipp: benutze ein Multimeter/Durchgangsprüfer um die richtigen Kabel zu finden...)", picture: "/sbadmin/images/RoboPi_2.JPG", project: 1).save()

                new Project(name: "KameraBuddy", rating: "3", shortDescription: "kleiner elktronischer Assistent für Fotografen", genre: "electronic", recension: "Nettes Tool!", written:  new java.util.Date()-23, member: 1).save()
                    new ProjectPage(longDescription: "Ein grober Plan/UML muss erstellt werden damit im anschluss in EAGLE o.ä. die PCB entworfen werden kann.", instructions: "1. Brainstorm 2. UML  3. PCB erstellen", picture: "/sbadmin/images/DollyPi_1.jpg", project: 2).save()
                    new ProjectPage(longDescription: "Bauteile einsetzen und verkabeln", instructions: "(Tipp: benutze ein Multimeter/Durchgangsprüfer um die richtigen Kabel zu finden...)", picture: "/sbadmin/images/DollyPi_2.JPG", project: 2).save()
                    new ProjectPage(longDescription: "Software", instructions: "Die software besteht aus einer Menueunterteilung und mehreren sehr kurzen Interrupts", picture: "/sbadmin/images/DollyPi_3.PNG", project: 2).save()

        new Account(username: "patrick", password: "hallo12345").save()
            new Member(title: "Herr", firstName: "Patrick", lastName: "Muck", dateOfBirth: new java.util.Date()-8739, email: "p.muck@gmx.de", user: 2 ).save()
                new Project(name: "TriStand", rating: "3", shortDescription: "Aufsteller für Notebooks oder iPads", genre: "accessoires", recension: "steht super", written:  new java.util.Date()-89, member: 2).save()
                    new ProjectPage(longDescription: "Der Aufsteller sollte aus robusten Material gebaut werden.", instructions: "1. Materialien besorgen. 2. Zusammenbauen. 3. Aufstellen.", picture: "/sbadmin/images/RoboPi_1.JPG", project: 3).save()
                    new ProjectPage(longDescription: "Es sollte alles der Reihe nach gebaut werden nicht durcheinander", instructions: "(Tipp: Es kann auch gerne Holz verwendet werden", picture: "/sbadmin/images/RoboPi_2.JPG", project: 3).save()

                new Project(name: "Baumhaus", rating: "4", shortDescription: "Ein kleines Baumhaus für fast jeden Baum", genre: "Holzbau", recension: "klein aber komfortabel", written:  new java.util.Date()-1000, member: 2).save()
                    new ProjectPage(longDescription: "Zuerst einmal in den Baummarkt und alle Materialien zuschneiden lassen auf die benötigten größen", instructions: "den Unterbau zwischen einer astgabelung anbringen", picture: "/sbadmin/images/baumhaus1.jpg", project: 4).save()
                    new ProjectPage(longDescription: "die Decken stützen auf dem Unterbau verschrauben", instructions: "Die Seitenverkleidungen an den Dachstützen anschrauben", picture: "/sbadmin/images/baumhaus2.jpg", project: 4).save()
                    new ProjectPage(longDescription: "Dachkonstruktion", instructions: "Zwischen den Deckenstützen querlatten verschrauben und darauf Wellblech anbringen", project: 4).save()

    }
    def destroy = {
    }
}
