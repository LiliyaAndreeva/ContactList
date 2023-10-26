//
//  PersonsListMore.swift
//  ContactList
//
//  Created by Лилия Андреева on 25.10.2023.
//

import UIKit

class PersonsListMoreVC: UIViewController {

    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phone
        emailLabel.text = person.email
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
