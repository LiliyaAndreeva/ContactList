
import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name)  \(surname)"
    }
}
    
extension Person {
    static func getPerson() -> [Person] {
        
        let contacts = DataStore()
        var persons: [Person] = []
        
//        var names = contacts.names.shuffled()
//        var surnames = contacts.surnames.shuffled()
//        var phoneNumbers = contacts.phoneNumbers.shuffled()
//        var emails = contacts.emails.shuffled()
        
        
        for _ in 0...14 {
            let person = Person(name: contacts.names.randomElement() ?? "",
                                surname: contacts.surnames.randomElement() ?? "",
                                phone: contacts.phoneNumbers.randomElement() ?? "",
                                email: contacts.emails.randomElement() ?? "")
            persons.append(person)
        }
        return persons
        
    }
    
}
    
   
  


