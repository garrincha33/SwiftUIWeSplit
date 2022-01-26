//
//  ContentView.swift
//  SwiftUIWeSplit
//
//  Created by Richard Price on 25/01/2022.
//

///Key points
///@State is a 2 way binding it reads and writes values
///use this with say a text field with the $0 then drop
///it to actually print the value
///if local, state shoulld be marked private
///the reason we have state is because you cant modify structs, you can use a class as these are reference types
///but keeping things to structs where you can improves performance

import SwiftUI

struct ContentView: View {
    
    
    let students = ["Rich", "Wayne", "Gerb"]
    @State private var selectedEmployee = "Rich"
    @State private var count = 0
    @State private var name = ""
   
   
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your poison", selection: $selectedEmployee) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                
                Section {
                    Text("Button Tapper")
                    Button("tap count: \(count)") {
                        self.count += 1
                    }
                }
                
                Section {
                    TextField("Enter your name", text: $name)
                    Text("your name is :- \(name)")
                }
            }.navigationTitle("Testing State")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
