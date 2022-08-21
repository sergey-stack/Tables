//
//  AcceptFromItemVC.swift
//  Tables
//
//  Created by сергей on 14.08.22.
//

import UIKit

class AcceptFromItemVC: UIViewController {
    var person: person?
    
    @IBOutlet  var emailLbl: UILabel!
    
    @IBOutlet  var numberLbl: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person!.name + " " + person!.surName
        emailLbl.text = person?.email
        numberLbl.text = person?.number

}
    
   
    
    
}
