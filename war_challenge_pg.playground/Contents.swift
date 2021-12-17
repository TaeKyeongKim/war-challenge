//import UI

//Naming convention: Starts of Cap
struct ChatView {
    
    //Properties
    var message:String = ""
    //computed property
    var messageWithPrefix:String {
        
        //if there is only one line inside of {},
        //you can ignore return
        "Kai Says : " + message

    }
    
    
    //View code for the screen
    
    
    //Methods of structure
    func sendChat() {
        //Code to send the chat message
        //The properies of strcuture can be called
//        print(messageWithPrefix)
        
        //save the chat message
        var db = DatabaseManager()
        let wasSuccess = db.saveData(data: message)
        
        if(wasSuccess){
            
        }
        
    }
    
    func deleteChat(){
        print(messageWithPrefix)
    }
    
    
    
    
    
}

struct DatabaseManager {
    
    private var serverName = "Server 1"
    
    
    func saveData(data:String)->Bool{
        //Save data and returns boolean result
        return true
    }
}

var a:ChatView  = ChatView()

a.sendChat()
a.message = "Hi"
a.sendChat()







