//
//  ContentView.swift
//  SwiftUIWeSplit
//
//  Created by Richard Price on 25/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("testing")
                    Text("testing")
                    Text("testing")
                }
            }.navigationTitle("SwiftUI")
               
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
