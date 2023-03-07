//
//  FirstView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 07/03/23.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ZStack{
           
                VStack{
                    VStack{
                        Text("Hi Alex")
                        Text("your points balance is")
                        Text("105,000")
                            .font(.title).bold()
                            .foregroundColor(Color("Primary"))
                        Text("valid till 12 December, 2022")
                    }
                    ScrollView{
                        VStack(alignment: .leading){
                            Text("Featured Merchants")
                                .font(.title2).bold()
                                .foregroundColor(Color("Primary"))
                            HorizantallyScrollView()
                            
                        }
                        .padding()
                        .padding(.vertical, 35)
                        VStack(alignment: .leading){
                            Text("Merchants near you")
                                .font(.title2).bold()
                                .foregroundColor(Color("Primary"))
                            HorizantallyScrollView()
                            
                        }
                        .padding()
                        .padding(.vertical,-40)
                        VStack(alignment: .leading){
                            Text("Categories")
                                .font(.title2).bold()
                                .foregroundColor(Color("Primary"))
                                .padding(.horizontal,-11)
                            CategoryView()
                            
                        }
                       
                        .padding(.vertical,35)
                    }
                }
            
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
