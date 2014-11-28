package ssiwms2

class Item {
    String barCode
    String batchCode
    String description
    Date retention
    String department
    String pickedUp
    String locationCode

    static hasMany = [location : Location]
    static belongsTo = [retrieval:Retrieval, pickup:Pickup]
    static constraints = {
        barCode(nullable: true)
        pickedUp(nullable: true)
    }
}
