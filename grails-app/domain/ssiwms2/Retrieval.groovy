package ssiwms2

class Retrieval {
    String companyName
    String requesterName
    String departmentCode
    String address
    Date requestDate
    Integer contactNumber
    Date deliveryDate

    static hasMany =[items:Item]
    static constraints = {
        companyName(nullable: false)
        requesterName(nullable: false)
        departmentCode(nullable: false)
        address(nullable: false)
        requestDate(nullable: false, format: "dd/mm/yyyy")
        contactNumber(nullable: false)
        deliveryDate(nullable: false)
    }
}
