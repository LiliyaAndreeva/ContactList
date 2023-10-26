import UIKit

final class PersonsListDetailTableVC: UITableViewController {
    
    var persons:[Person] = []
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellTwo", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = persons[indexPath.section].phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = persons[indexPath.section].email
            content.image = UIImage(systemName: "envelope")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    
    override func tableView( _ tableView : UITableView,  titleForHeaderInSection section: Int)->String? {
        
        let personCellunSection = persons[section]
        return personCellunSection.fullName
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else {return}
        header.contentView.backgroundColor = UIColor.systemGray6
        header.textLabel?.textColor = . black
    }
}


    


