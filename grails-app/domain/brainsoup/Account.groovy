package brainsoup

class Account {

    String username;
    String password;
    boolean active;

    String toString() {
        return "$username $active"
    }

    static constraints = {
        username(unique:true, blank:false)
        password(blank:false, password:true)
        active(nullable:true)
    }
}
