//
//  VoucherDetail.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 09/03/23.
//

import SwiftUI

struct VoucherDetail: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {}, label: {
                    Image(systemName: "chevron.backward")
                        .resizable()
                        .frame(width: 10, height: 20)
                        .foregroundColor(Color("Primary"))
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(Color("Primary"))
                        
                })
               
            }
            .padding()
            VStack{
                HStack{
                    Image("BI1")
                        .resizable()
                        .frame(width: 200,height: 200)
                        .clipped()
                        .cornerRadius(50)
                    VStack(alignment: .leading){
                   
                        Text("$10 off or 10,000 points")
                            .bold()
                        Text("Enjoy $10 off with minimum dine in bill size of $50 or more. Non-transferable.")
                            .font(.system(size: 14))
                        
                            Text("Valid till")
                                .bold()

                            Text("2 Jun, 2022")
                    
                    }
                    .padding()
                    
                }
                
                
            }
            
            VStack{
                Button(action: {}, label: {
                    Text("Claim now via VoucherUpPay").bold()
                        .frame(width: 300, height: 45)
                        .foregroundColor(Color("MainColor"))
                        .background(
                            Rectangle()
                                .fill(Color("Primary"))
                                .cornerRadius(15)
                                .shadow(
                                    color: Color.gray.opacity(0.7),
                                    radius: 8,
                                    x: 0,
                                    y: 8
                                )
                        )
                })
                .multilineTextAlignment(.center)
            }
            VStack(alignment: .leading){
                Text("Terms & Conditions")
                    .font(.system(size: 20))
                    .bold()
                    .multilineTextAlignment(.leading)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
            }
            .padding()
           
        }
        .padding()
    }
}

struct VoucherDetail_Previews: PreviewProvider {
    static var previews: some View {
        VoucherDetail()
    }
}
