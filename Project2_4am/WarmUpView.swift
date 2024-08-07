//
//  WarmUpView.swift
//  Project2_4am
//
//  Created by Ted Tan on 27/7/24.
//

import SwiftUI

struct WarmUpView: View {
    
    @State private var done = false
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                List {
                    Section(header: Text(" "), footer: Text("Do warm ups before you start exercising")) {
                        Text("Lunges            Lunges 5 times each leg")
                        
                        Text("Sidesteps        Step to each side 20 times")
                        Text("Squats             Bend your legs 15 times")
                    }
                }        .navigationTitle("Warm Up")

                NavigationLink(isActive: $done) {
                    Text("Placeholder")
                } label: {
                    Text("Start Activity")
                        .padding()
                        .background(Color(.blue))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                    
                }
            }
        }
    }


#Preview {
    WarmUpView()
}
