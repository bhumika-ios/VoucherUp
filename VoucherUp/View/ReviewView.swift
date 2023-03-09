//
//  ReviewView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 09/03/23.
//

import SwiftUI

struct ReviewView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                        Text("4.6").bold()
                    }
                    Text("1234 rating")
                        .font(.system(size: 14))
                }
                Spacer()
                VStack{
                    Button(action: {}, label: {
                        Text("Add a review").bold()
                            .frame(width: 150, height: 45)
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
                
            }
        }
        .padding()
        .frame(width: 380, height: 100)
        //.foregroundColor(Color("Primary"))
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
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
