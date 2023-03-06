//
//  OTPView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 06/03/23.
//

import SwiftUI

struct OTPView: View {
    @State private var otp1 = ""
    @State private var otp2 = ""
    @State private var otp3 = ""
    @State private var otp4 = ""
    @State private var isOTPs: Bool = false
    var body: some View {
        ZStack{
            
            VStack(alignment: .leading, spacing: 10){
                VStack{
                    VStack(alignment: .leading, spacing: 10){
                        Text("OTP Varification").bold()
                            .font(.system(size: 26))
                            .foregroundColor(Color("Main2Color"))
                        
                        Text("Almost there.Enter the 4-digit sent to [MobileNumber]")
                            .font(.system(size: 12))
                            .foregroundColor(Color("Main2Color"))
                        
                        // .padding(.leading)
                        Divider()
                        
                        
                        
                            .padding(.leading)
                        // divider with short to with and height set
                            .frame(width: 250, height: 1)
                        // divider color set
                            .overlay(Color("Main2Color"))
                    }
                    .padding(.vertical,30)
                    .padding(.horizontal,20)
                    
                    VStack{
                        HStack{
                            UITextField3(value: $otp1, placeholder: "-")
                                .padding(.horizontal,2)
                            UITextField3(value: $otp1, placeholder: "-")
                                .padding(.horizontal,2)
                            UITextField3(value: $otp1, placeholder: "-")
                                .padding(.horizontal,2)
                            UITextField3(value: $otp1, placeholder: "-")
                                .padding(.horizontal,2)
                        }
                        .padding()
                    }
                }
                .padding(.vertical,50)
                .padding(.vertical,-1)
                  //  .padding()
                VStack(alignment: .leading, spacing: 20){
                    HStack{
                        Button(action: {}, label: {
                            Text("Go Back").bold()
                                .frame(width: 165, height: 45)
                                .foregroundColor(Color("Main2Color"))
                                .background(
                                    Rectangle()
                                        .fill(Color("MainColor"))
                                        .cornerRadius(15)
                                        .shadow(
                                            color: Color.gray.opacity(0.7),
                                            radius: 8,
                                            x: 0,
                                            y: 8
                                        )
                                )
                        })
                        Button(action: {
                            isOTPs = true
                        }, label: {
                            Text("Submit").bold()
                                .frame(width: 165, height: 45)
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
                    }
                    
                }
                .padding(.vertical,120)
                .padding()
            }
            .sheet(isPresented: $isOTPs){
                ResultOTPView()
                    .presentationDetents([.height(700), .height(622)])
            }
        }
        
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}
