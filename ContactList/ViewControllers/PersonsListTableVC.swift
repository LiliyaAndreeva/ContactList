import UIKit

final class PersonsListTableVC: UITableViewController {
    
    var persons:[Person] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let personsListMoreVC = segue.destination as? PersonsListMoreVC else { return }
        personsListMoreVC.person = persons[indexPath.row]
    }
}

// MARK: - Table view data source
extension PersonsListTableVC {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellOne", for: indexPath)
        
        let personCell = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = personCell.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}

// MARK: - UITableViewdelegate
extension PersonsListTableVC {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
}
