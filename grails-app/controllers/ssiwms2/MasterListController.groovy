package ssiwms2

class MasterListController {

    def index() {
        def allItems = Item.list()
        [allItems: allItems]
    }
}
