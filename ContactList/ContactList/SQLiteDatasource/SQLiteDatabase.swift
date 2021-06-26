

import Foundation
import SQLite

//file tạo đường dẫn chứa db

class SQLiteDatabase {
    static let sharedInstance = SQLiteDatabase()
    
    var database: Connection? //Connection of SQLite
    
    private init() {
        // Create connection to database
        do {
            let documentDirectory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
//            in: miền hệ thống tệp để tìm kiếm: của User
//            for: nơi lưu trữ file sql
//            create: true -  tạo thư mục nếu nó chưa tồn taị
            
//        khoi tao path của file từ thư mục documentDirectory của hẹ thống -> noi them /contactlist/sqlite3
            let fileUrl = documentDirectory.appendingPathComponent("contactList").appendingPathExtension("sqlite3")
            
            //connect database từ đường dẫn file
            database = try Connection(fileUrl.path)
        } catch {
            print("Creating connection to database error: \(error)")
        }
    }
    
    // Creating Table
    func createTable() {
        SQLiteCommands.createTable()
    }
}
