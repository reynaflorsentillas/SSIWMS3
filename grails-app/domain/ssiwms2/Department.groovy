package ssiwms2

class Department {
        String departmentCode
        String departmentName
        String clientCode
    static  belongsTo = [client:Client]

    static constraints = {
    }
}
