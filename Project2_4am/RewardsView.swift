//
//  RewardsView.swift
//  Project2_4am
//
//  Created by Yuk Jun Lim on 27/7/24.
//

import SwiftUI

struct RewardsView: View {
    var currentPoints: Int = 670
    var nextRewardPoints: Int = 750
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Rewards!")
                .font(.largeTitle)
                .bold()
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Current Points")
                    Text("Next Reward Points")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("\(currentPoints)")
                    Text("\(nextRewardPoints)")
                }
            }
            .padding()
            .background(Color(UIColor.systemGray6))
            .cornerRadius(10)
            
            List {
                RewardRow(points: 250, reward: "$2", redeemed: true)
                RewardRow(points: 500, reward: "$2.50", redeemNow: true)
                RewardRow(points: 750, reward: "$3.50")
                RewardRow(points: 1000, reward: "$5")
            }
            .listStyle(PlainListStyle())
            
            Button(action: {
                // Action for redeeming all vouchers
            }) {
                Text("Redeem all remaining Vouchers")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            Spacer()
        }
        .padding()
        .navigationBarHidden(true)
    }
}

struct RewardRow: View {
    var points: Int
    var reward: String
    var redeemed: Bool = false
    var redeemNow: Bool = false
    
    var body: some View {
        HStack {
            Text("\(points) pts")
            Spacer()
            Text("Voucher of \(reward)")
            if redeemed {
                Text("(redeemed)")
                    .foregroundColor(.gray)
            } else if redeemNow {
                Text("(redeem!)")
                    .foregroundColor(.blue)
            }
        }
        .padding(.vertical, 10)
    }
}

struct RewardsView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsView()
    }
}
