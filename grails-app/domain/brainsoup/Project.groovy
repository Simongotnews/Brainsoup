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
        return "$name $genre $rating"
    }

    static constraints = {
        name(blank:false, matches: "[a-zA-Z]+")
        rating(blank:false)
        shortDescription(blank:false)
        genre(blank:false)
        recension(blank:false)
        written(nullable:true, max:new java.util.Date())
    }
}
