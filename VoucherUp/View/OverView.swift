//
//  OverView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 09/03/23.
//

import SwiftUI

struct OverView: View {
    let detailModel: DetailModel
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading){
                Text("About").bold()
                Text(detailModel.about)
            }
            .padding()
            VStack(alignment: .leading){
                Text("Photos From Merchant").bold()
                Image("BI1")
                    .resizable()
                    .frame(width: 350, height: 180)
                    .clipped()
                    .cornerRadius(15)
            }
            .padding()
            VStack(alignment: .leading){
                Text("Opening Hours").bold()
                HStack{
                    Text("Monday")
                    Spacer()
                    Text("11:00 - 22:00")
                }
                HStack{
                    Text("Tuesday")
                    Spacer()
                    Text("11:00 - 22:00")
                }
                HStack{
                    Text("Wednesday")
                    Spacer()
                    Text("11:00 - 22:00")
                }
            }
            .padding()
        }
        .padding()
    }
}

struct OverView_Previews: PreviewProvider {
    static var previews: some View {
        OverView(detailModel: detailModel[0])
    }
}
