//
//  MainListView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 09/03/23.
//

import SwiftUI

struct MainListView: View {
    var body: some View {
        VStack{
           
            ListView()
              //  .padding()
        }       // .padding()
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView()
    }
}

//struct MainTextListView: View {
//    var body: some View {
//        VStack(alignment: .leading){
//            Text("Food & Beverage").bold()
//                .font(.system(size: 22))
//                .foregroundColor(Color("Primary"))
//            Text("Delicious delights with deals to match.")
//                .font(.system(size: 12))
//                
//            VStack(alignment: .leading){
//                Text("Sort by: Cashback(10%)>")
//                    .font(.system(size: 12))
//                    .padding(.vertical)
//              
//            }
//           // .padding()
//        }
//      //  .padding()
//        .background(Color("MainColor"))
//    }
//}
