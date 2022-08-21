//
//  TableVC.swift
//  Tables
//
//  Created by сергей on 14.08.22.
//

import UIKit



class TableVC: UITableViewController {
    



            
        
        
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      //  let acceptFullName = Data.getPerson()
        return Data.peoples.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
       // let acceptFullName = Data.getPerson()
        let person = Data.peoples[indexPath.row]
        cell.textLabel?.text = person.name + " " + person.surName
        return cell
    }

  

   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let acceptVc = segue.destination as? AcceptFromItemVC,
           let selectCell = tableView.indexPathForSelectedRow {
               acceptVc.person = Data.peoples[selectCell.row]
        }
        
        
        
        
        
        
  

}
}
