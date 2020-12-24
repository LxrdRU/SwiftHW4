//
//  SwiftUIView.swift
//  SwiftHW4
//
//  Created by Andrey Markov on 2020-12-22.
//

import SwiftUI

struct ContactInformation: View {
    @Binding var showModal: Bool
    let person:Person
    
    var body: some View {
        Form{
            HStack{
                Spacer()
                Image(systemName: SystemImages.avatar.rawValue)
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
            RowView(image: SystemImages.phone.rawValue, contact: person.phone)
            RowView(image: SystemImages.email.rawValue, contact: person.email)
        }
        .navigationBarTitle(person.fullName)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformation(showModal: .constant(true), person: Person.getPerson())
    }
}
