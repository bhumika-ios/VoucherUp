//
//  HorizantallyScrollView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 07/03/23.
//

import SwiftUI

struct HorizantallyScrollView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                Button(action: {}, label: {
                    Text("FITNESS").bold()
                        .font(.title2)
                        .frame(width: 160, height: 100)
                        .foregroundColor(Color("MainColor"))
                        .background(
                            UIImage(placeholder: "BI1")
                            
                        )
                })
                Button(action: {}, label: {
                    Text("FITNESS").bold()
                        .font(.title2)
                        .frame(width: 160, height: 100)
                        .foregroundColor(Color("MainColor"))
                        .background(
                            UIImage(placeholder: "BI1")
                            
                        )
                })
                Button(action: {}, label: {
                    Text("FITNESS").bold()
                        .font(.title2)
                        .frame(width: 160, height: 100)
                        .foregroundColor(Color("MainColor"))
                        .background(
                            UIImage(placeholder: "BI1")
                            
                        )
                })
                Button(action: {}, label: {
                    Text("FITNESS").bold()
                        .font(.title2)
                        .frame(width: 160, height: 100)
                        .foregroundColor(Color("MainColor"))
                        .background(
                            UIImage(placeholder: "BI1")
                            
                        )
                })
            }
            .padding()
        }
    }
}

struct HorizantallyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizantallyScrollView()
    }
}
