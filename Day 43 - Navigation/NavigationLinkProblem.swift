//
//  NavigationLinkProblem.swift
//  Day 43 - Navigation
//
//  Created by Bruno Oliveira on 24/04/24.
//

import SwiftUI

struct DetailView: View {
    
    var number: Int
    
    var body: some View {
        Text("Detail View \(number)")
    }
    
    init(number: Int) {
        self.number = number
        print("Creating detail View numver \(number)")
    }
    
}

struct NavigationLinkProblem: View {
    
    var body: some View {
        NavigationStack {
            List (0..<1000) { i in
                NavigationLink("Tap me") {
                    DetailView(number: i)
                }
            }
        }
    }
}

#Preview {
    NavigationLinkProblem()
}
