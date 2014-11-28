package ssiwms2

class PackingList {
    String barCode
    String batchCode
    String description
    Date retention
    String department
    String pickedUp
    String status

    static belongsTo = [pickup:Pickup]
    static constraints = {
        barCode(nullable: true)
        batchCode()
        description()
        retention()
        department()
        status()
        pickedUp(nullable: true)
    }
}
