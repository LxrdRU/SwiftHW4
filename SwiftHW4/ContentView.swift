//
//  ContentView.swift
//  SwiftHW4
//
//  Created by Andrey Markov on 2020-12-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ContactList()
                .tabItem{
                    Image(systemName: "person.icloud")
                    Text("Contacts")
                }
            ContactListSections()
                .tabItem{
                    Image(systemName: "person.icloud")
                    Text("Contacts")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
