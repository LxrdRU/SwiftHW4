//
//  ContactList.swift
//  SwiftHW4
//
//  Created by Andrey Markov on 2020-12-22.
//

import SwiftUI

struct ContactList: View {
    var persons = Person.getPersons()
    var body:some View{
    NavigationView{
        List(persons){person in
            PersonRow(person: person)
        }
        .navigationBarTitle("Contact List")
    }
}
}
struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
