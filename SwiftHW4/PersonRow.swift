//
//  PersonRow.swift
//  SwiftHW4
//
//  Created by Andrey Markov on 2020-12-22.
//

import SwiftUI

struct PersonRow: View {
    @State private var isPresented = false
    let person:Person
    var body: some View {
        Button(action: {isPresented.toggle()}, label: {
            HStack{
                Text("\(person.fullName)")
                    .frame(width: 120, alignment: .leading)
            }
            .sheet(isPresented: $isPresented, content: {
                ContactInformation(showModal: $isPresented, person: person)
            })
        })
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(person: Person.getPerson())
    }
}
