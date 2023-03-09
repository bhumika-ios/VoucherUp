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
            VStack(alignment: .leading){
                MainTextListView()
                ScrollView(.vertical, showsIndicators: false){
                    ForEach(detailModel, id: \.self){ detailm in
                        
                        NavigationLink(destination: DetailView(detailModel: detailm)){
                            ShowListView(detailModel: detailm)
                        }
                    }
                    .padding()
                    
                    .background(Color("MainColor"))
                    
                }
                
            }
            .padding()
            //.background(Color("MainColor"))
            
        }
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
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 10, height: 20)
                    .foregroundColor(Color("Primary"))
            }
            Divider()
            // divider with short to with and height set
                .frame(height: 1)
            // divider color set
                .overlay(Color("Main2Color"))
            
        }
        //.padding()
        .background(Color("MainColor"))
    }
}

struct MainTextListView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Food & Beverage").bold()
                .font(.system(size: 22))
                .foregroundColor(Color("Primary"))
            Text("Delicious delights with deals to match.")
                .font(.system(size: 12))
                
            VStack(alignment: .leading){
                Text("Sort by: Cashback(10%)>")
                    .font(.system(size: 12))
                    .padding(.vertical)
              
            }
           // .padding()
        }
      //  .padding()
        .background(Color("MainColor"))
    }
}
