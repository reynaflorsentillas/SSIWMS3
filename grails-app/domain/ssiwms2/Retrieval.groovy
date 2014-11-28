package ssiwms2

class Retrieval {
    String companyName
    String requesterName
    String departmentCode
    String address
    Date requestDate
    String contactNumber
    Date deliveryDate
    String rush

    static hasMany =[pickList:PickLIst]
    static constraints = {

    }
}
