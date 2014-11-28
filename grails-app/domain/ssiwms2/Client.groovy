package ssiwms2

class Client {
        String clientCode
        String clientName

        static  hasMany = [user:User, dept:Department]
        static constraints = {

    }
}
