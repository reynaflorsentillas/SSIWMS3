package ssiwms2

class TransactionHistoryController {


    def client(){
    def allPickup=Pickup.list()
        [allPickup:allPickup]
    }

    def admin(){
     def allPickup=Pickup.list()
        [allPickup:allPickup]
    }
}
