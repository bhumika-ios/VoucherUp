//
//  HomeView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 06/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            GeometryReader { geometry in
                Image("BI1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                   // .offset(y: geometry.frame(in: .global).midY/50)
                   // .padding(.bottom)
                    .edgesIgnoringSafeArea(.all)
//               Text("VoucherUp")
//                    .font(.largeTitle).bold()
//                    .foregroundColor(.bl)
//                    .padding()
                    
            }
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
                }
            }
            .padding()
            .background(Color("MainColor"))
            .clipShape(Rounded())
            .padding(.top, -100)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
