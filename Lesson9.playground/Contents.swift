struct DatabaseManager {
    private var serverName = "Server 1"
    
    func saveData(data:String) -> Bool{
        print(serverName)
        // This code saves the data and returns a boolean result
        return true
    }
}

struct ChatView {
    var message = "Hello"
    
    func sendChat() {
        // Save the chat message
        var db = DatabaseManager()
        let successful = db.saveData(data: message)
        
        // Check the successful boolean value, if unsuccessful, show alert to user
    }
}
