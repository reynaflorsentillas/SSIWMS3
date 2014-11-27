package ssiwms2

class Billing {
    Integer billNo
    String status
    Float rate
    Float total
    static belongsTo = [retrieval: Retrieval, pickup:Pickup]
    static hasMany =[reports:Report]
    static constraints = {

    }
}
