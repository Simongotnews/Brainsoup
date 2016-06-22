package brainsoup

class ProjectPage {

    String longDescription;
    String instructions;
    String picture;

    //many to one
    static belongsTo = [project:Project];

    String toString() {
        return "$longDescription"
    }

    static constraints = {
        longDescription(blank:false)
        instructions(blank:false)
        project(nullable:true)
    }
}
