//
//  ResultOTPView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 06/03/23.
//

import SwiftUI

struct ResultOTPView: View {
    var body: some View {
        ZStack{
            
            VStack(alignment: .leading, spacing: 10){
                VStack{
                    VStack(alignment: .leading, spacing: 10){
                        Text("OTP Varification").bold()
                            .font(.system(size: 26))
                            .foregroundColor(Color("Main2Color"))
                        
                        
                        
                        // .padding(.leading)
                        Divider()
                        
                        
                       
                        // divider with short to with and height set
                            .frame(width: 250, height: 1)
                        // divider color set
                            .overlay(Color("Main2Color"))
                    }
                    
                    .padding(.vertical,30)
                    .padding(.horizontal,20)
                    
                    VStack{
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.green)
                    }
                }
                .padding(.vertical,20)
                .padding(.vertical,-1)
                  //  .padding()
                VStack(alignment: .center, spacing: 20){
                    
                    Text("Your OTP has been verified sucessfully")
                        .font(.system(size: 24)).bold()
                        .multilineTextAlignment(.center)
                        Text("Let's get you rewarded.")
                        .foregroundColor(.gray)
                        
                    }
            }
            
        }
    }
}

struct ResultOTPView_Previews: PreviewProvider {
    static var previews: some View {
        ResultOTPView()
    }
}
