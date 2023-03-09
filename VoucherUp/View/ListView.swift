//
//  ListView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 09/03/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
           
            List(detailModel){ detailm in
                NavigationLink(destination: DetailView(detailModel: detailm)){
                    ShowListView(detailModel: detailm)
                }
            }
            // .listStyle(.grouped)
            .padding(.horizontal,-15)
           
        }
      
        //.padding()
        .background(Color("MainColor"))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
           
    }
}
struct ShowListView: View{
    let detailModel: DetailModel
    var body: some View{
        VStack{
           
            HStack{
                Image(detailModel.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipped()
                    .cornerRadius(25)
                VStack(alignment: .leading){
                    Text(detailModel.name)
                    HStack{
                        Image(systemName: "location.north.circle")
                            .foregroundColor(Color("Primary"))
                        
                        Text(detailModel.address)
                            .foregroundColor(.blue)
                    }
                    Text(detailModel.type)
                }
            }
        }
        //.padding()
        .background(Color("MainColor"))
    }
}
