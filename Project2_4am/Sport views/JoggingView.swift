//
//  OthersView.swift
//  Project2_4am
//
//  Created by Andrew Tan Li-Onn on 10/8/24.
//

import SwiftUI

struct JoggingView: View {
    
    @State private var warmUpSheet = false
    @State private var selectedDistance = ""
        let distanceOptions = ["0.5km", "0.75km","1.0km","1.25km","1.5km","1.75km","2.0km","2.25km","2.5km","2.75km","3.0km"]
    
    var body: some View {
        
        
        
        
            List{
                HStack {
                    Text("2.5 km")
                        .font(.headline)
                    Spacer()
                    Text("Change >")
                        .foregroundColor(.blue)
                }
                HStack {
                    Text("20 min")
                        .font(.headline)
                    Spacer()
                    Text("Change >")
                        .foregroundColor(.blue)
                }
                Text("Moderate Intensity")
                    .font(.subheadline)
                Text("50 points")
                    .font(.subheadline)
                
                Section{
                    HStack{
                        Text("You can do this anywhere, the gym, the track or the park.")
                            .multilineTextAlignment(.center)
                    }
                    
                }
                Section{
                    Button("Warm Up") {
                        warmUpSheet = true
                    }
                    Button("Start Activity") {
                        // Handle start activity action
                    }
                }
                .padding()
            }
            .navigationTitle("Jogging")
        
        .sheet(isPresented: $warmUpSheet, content: {
            WarmUpView()
        })
        }
       
        
    }


struct JoggingView_Previews: PreviewProvider {
    static var previews: some View {
        JoggingView()
    }
}

#Preview {
    JoggingView()
}
