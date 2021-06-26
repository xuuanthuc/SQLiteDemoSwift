
import Foundation

class ContactScreenViewModel {
    
    private var contactArray = [Contact]()
    //func contect to database
    func connectToDatabase() {
        _ = SQLiteDatabase.sharedInstance
    }
    //func load data from database vào các table view cell
    func loadDataFromSQLiteDatabase() {
        contactArray = SQLiteCommands.presentRows() ?? []
    }
    
    
    //func init table view
    func numberOfRowsInSection (section: Int) -> Int {
        if contactArray.count != 0 {
            return contactArray.count
        }
        return 0
    }
    
    func cellForRowAt (indexPath: IndexPath) -> Contact {
        return contactArray[indexPath.row]
    }
}
