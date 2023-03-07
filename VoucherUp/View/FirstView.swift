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
                Text("Hi Alex")
                Text("your points balance is")
                Text("105,000")
                    .font(.title).bold()
                    .foregroundColor(Color("Primary"))
                Text("valid till 12 December, 2022")
                   
                VStack{
                    Text("Featured Merchants")
                        .font(.title2).bold()
                        .foregroundColor(Color("Primary"))
                    HorizantallyScrollView()
                    
                }
                .padding(.vertical, 35)
            }
            
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
