package brainsoup

class Rating {

     String code;
     String description;

     //many to one
     static belongsTo = [project:Project]

     String toString() {
        return "$code $description"
     }

     static constraints = {
           code (blank:false)
           description (blank:false)
     }
}
