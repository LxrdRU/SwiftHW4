//
//  Person.swift
//  SwiftHW4
//
//  Created by Andrey Markov on 2020-12-22.
//

import Foundation
struct Person:Identifiable {
    var id: Int
    
    let name:String
    let surname:String
    let phone:String
    let email:String
    
    var fullName: String{
        "\(name) \(surname)"
    }
}
extension Person {
    static func getPerson() -> Person {
        let person = Person(id: DataManager.shared.ids[0], name: DataManager.shared.names[0], surname: DataManager.shared.surnames[0], phone: DataManager.shared.phones[0], email: DataManager.shared.emails[0])
        return person
    }
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let ids = DataManager.shared.ids.shuffled()
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                id: ids[index], name: names[index], surname: surnames[index], phone: phones[index], email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
enum SystemImages:String {
    case phone = "phone"
    case email = "tray"
    case avatar = "person.fill"
    case contacts = "person.3"
}
