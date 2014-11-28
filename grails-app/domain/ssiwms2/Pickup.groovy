package ssiwms2

class Pickup {
    String clientCode
    String requesterName
    String departmentCode
    String address
    Date requestDate
    String phone
    Date pickupDate

    static hasMany =[items:Item]
    static constraints = {

    }
}
