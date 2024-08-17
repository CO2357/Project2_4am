//
//  homeView.swift
//  Project2_4am
//
//  Created by Ted Tan on 10/8/24.
//

import SwiftUI


struct homeView: View {
    
    let progress: Double
    
    var body: some View {
        NavigationView { // Wrap your view in a NavigationView
            VStack{
                ZStack {
                    Circle()
                        .stroke(
                            Color.pink.opacity(0.5),
                            lineWidth: 20
                        )
                    Circle()
                        .trim(from: 0, to: progress)
                        .stroke(
                            Color.pink,
                            style: StrokeStyle(
                                lineWidth: 20,
                                lineCap: .round
                            )
                        )
                        .rotationEffect(.degrees(-90))
                        .animation(.easeOut, value: progress)
                }
                .padding(30)
                NavigationView{
                    VStack{
                        List{
                            Text("Placeholder")
                            
                        }
                    }
                    .navigationTitle("Bookmarks")
                    
                }
            }
            .navigationTitle("Home") // Now this should work
        }
    }
}

#Preview{
    homeView(progress: 0.7) }
