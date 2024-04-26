//
//  ProgrammaticNavigation.swift
//  Day 43 - Navigation
//
//  Created by Bruno Oliveira on 25/04/24.
//

import SwiftUI

/*Programmatic navigation allows us to move from one view to another just using code, rather than waiting for the user to take a specific action. For example, maybe your app is busy processing some user input and you want to navigate to a result screen when that work is finished – you want the navigation to happen automatically when you say so, rather than as a direct response to user input*/

struct ProgrammaticNavigation: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack (path: $path) {
            VStack {
                Text("Root View")
                    .padding()
                Button ("Show 32") {
                    path = [32]
                }
                
                Button ("Show 64") {
                    path.append(64)
                }
                
                Button ("Show 64, then back to 32") {
                    path = [32, 64]
                }
                
                Button("Show 128") {
                    path.append(128)
                }
                
                Button ("Show 128, than 64, then back to 32") {
                    path = [32, 64, 128]
                }
                
            }
            .navigationDestination(for: Int.self) { selection in
                Text("View \(selection)")
                    .padding()
                Text("You selected \(selection), and the array now is \(path)")
                
            }
        }
    }
}

#Preview {
    ProgrammaticNavigation()
}
