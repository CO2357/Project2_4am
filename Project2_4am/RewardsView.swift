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
        NavigationStack{
            VStack {
                List {
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
                    .cornerRadius(10)
                    
                    Section{
                        HStack {
                            Text("200 pts")
                            Spacer()
                            Text("Voucher of $2 (redemmed)")
                        }
                        HStack {
                            Text("500 pts")
                            Spacer()
                            Text("Voucher of $2.50 (not redemmed)")
                        }
                        HStack {
                            Text("750 pts")
                            Spacer()
                            Text("Voucher of $3.50 (locked)")
                        }
                        HStack {
                            Text("10 000 pts")
                            Spacer()
                            Text("Voucher of $5 (locked)")
                        }
                    }
                    .navigationTitle("Rewards!")
                    
                    Section{
                        Button {
                            //code
                        } label: {
                            Text("Redeem all avaliable vouchers")
                        }

                    }
                    
                }
            }
        }
    }
}
struct RewardsView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsView()
    }
}
