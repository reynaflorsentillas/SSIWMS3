package ssiwms2

class Location {
    String locationCode
    String locationName
    String Status
    static belongsTo = [item: Item]

    static constraints = {
    }
}
