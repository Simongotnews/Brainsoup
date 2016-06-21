package brainsoup

class Project {

    String name;
    int rating;
    String shortDescription;
    String genre;
    String recension;
    java.util.Date written;

    // many to one
    static belongsTo = [member:Member];

    //one to many
    static hasMany = {
        rating:Rating
        projectPage:ProjectPage
    }

    String toString() {
        return "$name"
    }

    static constraints = {
        name(blank:false, matches: "[a-zA-Z]+")
        rating(nullable:true)
        shortDescription(blank:false, maxSize: 50)
        genre(blank:false)
        recension(nullable:true, blank:false)
        written(nullable:true, max:new java.util.Date())
        member(nullable:true)
    }
}
