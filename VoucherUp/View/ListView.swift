//
//  ListView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 09/03/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List(detailModel){ detailm in
            ShowListView()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
struct ShowListView: View{
    var body: some View{
        HStack{
            Image("BI1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .clipped()
                .cornerRadius(25)
            VStack(alignment: .leading){
                Text("PIZZA HUT")
                HStack{
                    Image(systemName: "location.north.circle")
                        .foregroundColor(Color("Primary"))
                    
                    Text("4 Tample central,surat")
                        .foregroundColor(.blue)
                }
                Text("FamilyResturant")
            }
        }
    }
}
