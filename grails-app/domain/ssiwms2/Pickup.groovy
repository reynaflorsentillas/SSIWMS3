package ssiwms2

class Pickup {
    String clientCode
    String requesterName
    String departmentCode
    String address
    Date requestDate
    String phone
    Date pickupDate
    String rush

    static hasMany =[packingList:PackingList]
    static constraints = {

    }
}
