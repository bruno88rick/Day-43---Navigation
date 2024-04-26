//
//  NavigationPath.swift
//  Day 43 - Navigation
//
//  Created by Bruno Oliveira on 26/04/24.
//

import SwiftUI

struct Navigation_Path: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        VStack {
            Text("Navigation Destination & Navigation Path")
                .font(.title)
                .padding()
            Text("Using list, for exemple, to navigate to different tyoes")
                .font(.caption)
                .padding()
            
            Text("From Toolbar, we're using the NavigationPath as an array that stores multiple different types. So we can navigate to another view that contains different type of data.")
                .font(.caption)
                .padding()
        }
        
        VStack {
            NavigationStack(path: $path) {
                List {
                    ForEach(0..<5) { i in
                        NavigationLink("Select Numer \(i)", value: i)
                    }
                    ForEach(0..<5) { i in
                        NavigationLink("Select String: \(i)", value: String(1))
                    }
                }
                .toolbar {
                    Button("Push 556") {
                        path.append(556)
                    }
                    
                    Button("Push Hello") {
                        path.append("Hello")
                    }
                }
                .navigationDestination(for: Int.self) { selection in
                    Text("You selected the number \(selection)")
                }
                .navigationDestination(for: String.self) { selection in
                    Text("You selected the String \(selection)")
                }
            }
        }
        
    }
}

#Preview {
    Navigation_Path()
}
