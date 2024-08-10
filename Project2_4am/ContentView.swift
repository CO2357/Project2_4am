//
//  ContentView.swift
//  Project2_4am
//
//  Created by T Krobot on 20/7/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var manager: HealthManager
    var body: some View {
        TabView{
            homeView(progress: circlees)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SportView()
                .tabItem {
                    Label("Sports", systemImage: "figure.run")
                }
            RewardsView()
                .tabItem {
                    Label("Rewards", systemImage: "gift")
                }
        }
    }
}

#Preview {
    ContentView()
}
