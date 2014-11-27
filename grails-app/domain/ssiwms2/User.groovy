package ssiwms2

class User {
        Integer userID
        String lastName
        String firstName
        String username
        String password
        String email
        String userType
        String clientCode
    static  belongsTo = [client:Client]
    static constraints = {
    }
}
