//
//  OnboardingView.swift
//  Project2_4am
//
//  Created by T Krobot on 27/7/24.
//

import SwiftUI

struct OnboardingView: View {
    @State private var height: String = ""
    @State private var weight: String = ""
    @State private var gender: String = ""
    @State private var activityLevel: String = ""
    @State private var age: String = ""
    @State private var showAgeDisclaimer: Bool = false
    
    let textLimit = 6
    let genderOptions = ["Male", "Female", "Non-Binary"]
    let activityLevelOptions = ["Light", "Moderate", "Intensive"]
    let ageOptions = ["50-55", "56-60", "61-65", "66-70", "71-75", "76-80", "81-85", "86-90", "90+"]
    
    var body: some View {
        
        NavigationStack{
                VStack{
                    
                    Text("Please enter your personal information:")
                        .font(.subheadline)
                        .padding(.top, 20)
                    
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            TextField("Height", text: $height)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.decimalPad)
                                .onChange(of: height) {
                                        self.height = String(height.prefix(textLimit))
                                    }
                                .onChange(of: height, { oldValue, newValue in
                                    if newValue != "" && Double(newValue) == nil {
                                        height = oldValue
                                    }
                                })
                                .lineLimit(1)
                            
                            Text("cm")
                                .padding(.leading, 5)
                        }
                        
                        HStack {
                            TextField("Weight", text: $weight)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.decimalPad)
                                .onChange(of: weight) {
                                        self.weight = String(weight.prefix(textLimit))
                                    }
                                .onChange(of: height, { oldValue, newValue in
                                    if newValue != "" && Double(newValue) == nil {
                                        height = oldValue
                                    }
                                })
                                .lineLimit(1)
                            
                            Text("kg")
                                .padding(.leading, 10)
                        }
                        
                        DisclosureGroup("Gender: \(gender.isEmpty ? "" : gender)") {
                            ForEach(genderOptions, id: \.self) { option in
                                Text(option)
                                    .padding(.vertical, 5)
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        gender = option
                                    }
                                    .frame (maxWidth: 10000)
                                    .padding(.vertical, 3)
                                    .padding(.horizontal,10)
                                    .background(.white)
                                    .clipShape(RoundedRectangle(
                                        cornerRadius: 5))
                                    .overlay(
                                        RoundedRectangle (cornerRadius: 5)
                                            .stroke(Color.gray,style: StrokeStyle(lineWidth:1)).opacity(0.3))
                            }
                            .padding(.bottom,5)
                        }
                        .frame (maxWidth: 10000)
                        .padding(.vertical, 4)
                        .padding(.horizontal,10)
                        .background(.white)
                        .clipShape(RoundedRectangle(
                            cornerRadius: 6))
                        .overlay(
                            RoundedRectangle (cornerRadius: 6)
                                .stroke(Color.gray,style: StrokeStyle(lineWidth:1)).opacity(0.3))
                        
                        
                        
                        
                        .foregroundColor(.black)
                        
                        DisclosureGroup("Activity level: \(activityLevel.isEmpty ? "" : activityLevel)") {
                            ForEach(activityLevelOptions, id: \.self) { option in
                                Text(option)
                                    .padding(.vertical, 5)
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        activityLevel = option
                                    }
                                    .frame (maxWidth: 10000)
                                    .padding(.vertical, 3)
                                    .padding(.horizontal,10)
                                    .background(.white)
                                    .clipShape(RoundedRectangle(
                                        cornerRadius: 5))
                                    .overlay(
                                        RoundedRectangle (cornerRadius: 5)
                                            .stroke(Color.gray,style: StrokeStyle(lineWidth:1)).opacity(0.3))
                            }
                            .padding(.bottom,5)
                        }
                        .frame (maxWidth: 10000)
                        .padding(.vertical, 4)
                        .padding(.horizontal,10)
                        .background(.white)
                        .clipShape(RoundedRectangle(
                            cornerRadius: 6))
                        .overlay(
                            RoundedRectangle (cornerRadius: 6)
                                .stroke(Color.gray,style: StrokeStyle(lineWidth:1)).opacity(0.3))
                        .foregroundColor(.black)
                        
                        DisclosureGroup("Age: \(age.isEmpty ? "" : age)") {
                            ForEach(ageOptions, id: \.self) { option in
                                Text(option)
                                    .padding(.vertical, 5)
                                    .contentShape(Rectangle())
                                    .onTapGesture {
                                        age = option
                                        showAgeDisclaimer = (option == "90+")
                                    }
                                    .frame (maxWidth: 10000)
                                    .padding(.vertical, 3)
                                    .padding(.horizontal,10)
                                    .background(.white)
                                    .clipShape(RoundedRectangle(
                                        cornerRadius: 5))
                                    .overlay(
                                        RoundedRectangle (cornerRadius: 5)
                                            .stroke(Color.gray,style: StrokeStyle(lineWidth:1)).opacity(0.3))
                            }
                            .padding(.bottom, 5)
                        }
                        .frame (maxWidth: 10000)
                        .padding(.vertical, 4)
                        .padding(.horizontal,10)
                        .background(.white)
                        .clipShape(RoundedRectangle(
                            cornerRadius: 6))
                        .overlay(
                            RoundedRectangle (cornerRadius: 6)
                                .stroke(Color.gray,style: StrokeStyle(lineWidth:1)).opacity(0.3))
                        .foregroundColor(.black)
                        
                        if showAgeDisclaimer {
                            Text("Please exercise carefully and stop immediately if you feel uncomfortable.")
                                .font(.footnote)
                                .foregroundColor(.red)
                                .padding(.top, 5)
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                
                        }
                    }
                    .padding(.horizontal, 30)
                    .padding(.top, 20)
                    
                    Button(action: {
                        // Action for "Continue with Health"
                    }) {
                        Text("Submit")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 30)
                    .padding(.top,30)
                    
                    Text("or")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.top, 20)
                    
                    Button(action: {
                        // Action for "Submit"
                    }) {
                        Text("Continue with Health")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 30)
                    .padding(.top, 20)
                    
                    Spacer()
                }
            .navigationTitle("Onboarding")
        }
        
        
    }
}


#Preview {
    OnboardingView()
}

