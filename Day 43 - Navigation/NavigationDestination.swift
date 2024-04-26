//
//  NavigationDestination.swift
//  Day 43 - Navigation
//
//  Created by Bruno Oliveira on 24/04/24.
//

import SwiftUI

struct Student: Hashable {
    var id = UUID()
    var name: String
    var age: Int
}

struct NavigationDestination: View {
    var body: some View {
        NavigationStack {
            List(0..<101) { i in
                NavigationLink("Select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
            .navigationDestination(for: Student.self) { student in
                Text("You select the student (\(student.name)")
            }
        }
    }
}

#Preview {
    NavigationDestination()
}
