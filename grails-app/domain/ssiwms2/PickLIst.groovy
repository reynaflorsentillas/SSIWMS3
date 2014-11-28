package ssiwms2

class PickLIst {

    String barCode
    String batchCode
    String description
    Date retention
    String department
    String pickedUp
    String status

    static belongsTo = [retrieval:Retrieval]
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
