//
//  RowView.swift
//  SwiftHW4
//
//  Created by Andrey Markov on 2020-12-24.
//

import SwiftUI

struct RowView: View {
    let image: String
    let contact: String
    
    var body: some View {
        HStack{
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(contact)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(image: SystemImages.email.rawValue, contact: Person.getPerson().email)
    }
}
