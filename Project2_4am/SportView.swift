//
//  SportvIEW.swift
//  Project2_4am
//
//  Created by Andrew Tan Li-Onn on 10/8/24.
//

import SwiftUI
//searchbar insert
struct SportView: View {
    struct Sport: Identifiable {
        let id = UUID()
        let name: String
        let points: String
    }

    let sports = [
        Sport(name: "Brisk Walk", points: "50 to 100"),
        Sport(name: "Jogging", points: "80 to 150"),
        Sport(name: "Yoga", points: "20"),
        Sport(name: "Pickleball", points: "70 to 120"),
        Sport(name: "Tai Chi", points: "40"),
        Sport(name: "Hiking", points: "60"),
        Sport(name: "Warm up", points: "10")
    ]

    var body: some View {
        NavigationView {
            List(sports) { sport in
                NavigationLink(destination: Text("(sport.name)")) {
                    HStack {
                        Text(sport.name)
                        Spacer()
                        Text(sport.points)
                    }

                }
            }
            .navigationTitle("Sports")


        }

    }
}

#Preview {
    SportView()
}
