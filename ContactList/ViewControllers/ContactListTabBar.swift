import UIKit

final class ContactListTabBar: UITabBarController {
    
    var persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                let personsVC = navigationVC.topViewController
                
                if let personsVC = personsVC as? PersonsListTableVC {
                    personsVC.persons = persons
                } else if let personListDetailTNC = personsVC as? PersonsListDetailTableVC {
                    personListDetailTNC.persons = persons
                }
            }
        }
    }
}
