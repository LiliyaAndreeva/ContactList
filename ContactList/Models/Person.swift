
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
        
        let names = contacts.names.shuffled()
        let surnames = contacts.surnames.shuffled()
        let phoneNumbers = contacts.phoneNumbers.shuffled()
        let emails = contacts.emails.shuffled()
        
        
        for index in 0..<names.count {
              
            let person = Person(name: names[index],
                                surname: surnames[index],
                                phone: phoneNumbers[index],
                                email: emails[index])
            persons.append(person)
        }
        return persons
    }
}
    
   
  


