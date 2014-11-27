package ssiwms2

class Report {
    Integer reportID

    Date reportDate

    String remarks

    String reporType

    static belongsTo = ["billing:Billing"]
    static constraints = {
    }
}
