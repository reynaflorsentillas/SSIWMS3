package ssiwms2

class AccountingController {

    def index() {
        def bills= Billing.list()
        [billing: bills]

    }
}
