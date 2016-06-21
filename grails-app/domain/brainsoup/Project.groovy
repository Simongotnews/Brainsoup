package brainsoup

class Project {

    String name;
    String rating;
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
        return "$name (Genre:$genre Rating:$rating)"
    }

    static constraints = {
        name(blank:false, matches: "[a-zA-Z]+")
        rating(nullable:true, blank:true)
        shortDescription(blank:false, maxSize: 50)
        genre(blank:false)
        recension(nullable:true, blank:false)
        written(nullable:true, max:new java.util.Date())
        member(nullable:true)
    }
}
