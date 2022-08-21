//
//  Created person.swift
//  Tables
//
//  Created by сергей on 20.08.22.
//

import Foundation

class Data {
    static var peoples = getPerson()
    
   static var arrayName = ["name1", "name2", "name3",
                                "name4", "name5"]
        
   static var arraySurName = ["SurName1", "SurName2", "SurName3",
                                   "SurName4", "SurName5"]
        
   static var arrayEmail = ["email1@mail.ru", "email2@mail.ru",
                                 "email3@mail.ru", "email4@mail.ru", "email5@mail.ru"]
        
  static  var arrayNumber = ["+37529-111-11-11", "+37529-111-11-12",
                                  "+37529-111-11-13", "+37529-111-11-14", "+37529-111-11-15"]

    
    static func getPerson() -> [person] {
        var people: [person] = []
         let name = arrayName.shuffled()
           let email = arrayEmail.shuffled()
           let surName = arraySurName.shuffled()
           let  number = arrayNumber.shuffled()
        
        for item in 0...4 {
            people.append(person(name: name[item], surName: surName[item], email: email[item], number: number[item]))
        
           }
   return people
}
}
