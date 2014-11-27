package ssiwms2

class Item {
    Integer itemID
    String barCode
    String batchCode
    String description
    Date retention
    String department
    Integer packinglistNo
    String pickedUp
    String locationCode

    static hasMany = [location : Location]
    static belongsTo = [retrieval:Retrieval, pickup:Pickup]
    static constraints = {
    }
}
