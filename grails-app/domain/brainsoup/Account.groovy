package brainsoup

class Account {

    String username;
    String password;
    boolean active;

    String toString() {
        return "$username $active"
    }

    static constraints = {
        username(unique:true, blank:false, minSize: 5, maxSize: 20)
        password(blank: false, nullable: false, minSize: 8, maxSize: 64, password: true)
        active(nullable:true)
    }
}
