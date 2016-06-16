package brainsoup

class Member {

    String title;
    String firstName;
    String lastName;
    java.util.Date dateOfBirth;
    String email;

    //one to one
    Account user;       // ein Member hat genau einen Account

    //one to many
    static hasMany = [project:Project];     // eine Member kann mehrere Projekte haben

    String toString() {
        return "$firstName $lastName"
    }

    static mapping = {
        table 'costumer_t'
            email column:'emails'
    }

    static constraints = {
        title(nullable:false, inList: ["Herr", "Frau"]);
        firstName(blank:false, matches:"[a-zA-Z]+");
        lastName(blank:false, matches:"[a-zA-Z]+");
        dateOfBirth(nullable:true, max:new java.util.Date());
        email(nullable:true, email:true);
        user(unique:true)
    }
}
