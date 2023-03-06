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
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 10){
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
                  //  .padding()
            }
        }
        .padding()
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}
