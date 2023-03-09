//
//  CardView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 09/03/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Image("BI1")
                        .resizable()
                        .frame(width: 65,height: 65)
                        .clipped()
                        .cornerRadius(50)
                    VStack(alignment: .leading){
                        HStack{
                            Text("PizzHut")
                                .font(.system(size: 20))
                                .bold()
                            Spacer()
                            Text("Valid till")
                                .bold()
                        }
                        HStack{
                            Text("$10 off or 10,000 points")
                                .bold()
                            Spacer()
                            Text("2 Jun, 2022")
                        }
                        Text("With minimum spend of $50")
                            .font(.system(size: 14))
                    }
                    
                }
                
            }
            VStack{
                Button(action: {}, label: {
                    Text("Use now").bold()
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
        .frame(width: 380, height: 150)
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

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
