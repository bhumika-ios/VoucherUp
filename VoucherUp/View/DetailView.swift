//
//  DetailView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 09/03/23.
//

import SwiftUI

struct DetailView: View {
    let detailModel : DetailModel
    var body: some View {
        VStack{
          
            Button(action: {}, label: {
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(Color("Primary"))
                    .offset(x:150, y:-20)
            })
           

            HStack{
                Image(detailModel.imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipped()
                    .cornerRadius(50)
                VStack(alignment: .leading) {
                    Text(detailModel.name)
                    HStack{
                        Image(systemName: "location.north.circle")
                            .foregroundColor(Color("Primary"))
                        
                        Text(detailModel.address)
                            .foregroundColor(.blue)
                    }
                    HStack{
                        Image(systemName: "phone.fill")
                            .foregroundColor(Color("Primary"))
                        
                        Text(detailModel.phoneNumber)
                            .foregroundColor(.blue)
                    }
                }
            }
            VStack{
                Button(action: {}, label: {
                    Text("Pay with VoucherUp").bold()
                        .frame(width: 330, height: 45)
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
            VStack(alignment: .leading, spacing: 20){
                Button(action: {}, label: {
                    Text("View All participating outlets").bold()
                        .frame(width: 330, height: 45)
                        .foregroundColor(Color("Primary"))
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
            }
            ScrollView{
                OverView(detailModel: detailModel)
            }
           
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(detailModel: detailModel[0])
    }
}
