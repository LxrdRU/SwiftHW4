//
//  ContactListSections.swift
//  SwiftHW4
//
//  Created by Andrey Markov on 2020-12-22.
//

import SwiftUI

struct ContactListSections:View{
    var persons = Person.getPersons()
    var body: some View{
        NavigationView{
        List{
            ForEach(persons){person in
                Section(header: Text(person.fullName)) {
                    RowView(image: SystemImages.phone.rawValue, contact: person.phone)
                    RowView(image: SystemImages.email.rawValue, contact: person.email)
                    
                }
            }
        }
        .navigationBarTitle("Contact List")
    }
    }
}
struct ContactListSections_Previews: PreviewProvider {
    static var previews: some View {
        ContactListSections()
    }
}
