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
                    Image(systemName: SystemImages.avatar.rawValue)
                    Text("Contacts")
                }
            ContactListSections()
                .tabItem{
                    Image(systemName: SystemImages.avatar.rawValue)
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
