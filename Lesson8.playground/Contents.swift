struct ChatView { // sturct 는 보통 대문자로 시작한다.
    // Properties
    var message:String = ""
    var messageWithPrefix:String {
        let prefix = "Sunny Says: "
        return prefix + message
    }
    // View Code for this screen
    
    // Methods
    func sendChat() {
       
        // Code to send the chat message
        print(messageWithPrefix)
    }
    
    func deleteChat() {
        print(messageWithPrefix)
    }
}
