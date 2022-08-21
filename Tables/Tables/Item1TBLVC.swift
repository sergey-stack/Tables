//
//  Item1TBLVC.swift
//  Tables
//
//  Created by сергей on 14.08.22.
//

import UIKit

class Item1TBLVC: UITableViewController {
    //var personsArray = Data.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        clearsSelectionOnViewWillAppear = false
    
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {  // количество секций зависит от количество имён в массиве 
       // let person = personsArray
        return Data.peoples.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
               
                cell.textLabel?.text = Data.peoples[indexPath.section].number
                return cell
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                
                cell.textLabel?.text = Data.peoples[indexPath.section].email
                return cell

            default:
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                
                cell.textLabel?.text = Data.peoples[indexPath.row].number
                return cell
                
            }
        }

        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            let person = Data.peoples[section]
            return person.name + person.surName
        }
}
