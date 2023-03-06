//
//  UIImage.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 06/03/23.
//

import SwiftUI

struct UIImage: View {
    var placeholder: String
    var body: some View {
        VStack{
            Image(placeholder)
                .resizable()
                .resizable()
                .clipShape(Rectangle())
                    .cornerRadius(20)
                    .shadow(
                        color: Color.gray.opacity(0.7),
                        radius: 8,
                        x: 0,
                        y: 8
                    )
                    .frame(width: 180, height: 120)
                    .foregroundColor(.black)
        }
    }
        
     
}
//
//struct UIImage_Previews: PreviewProvider {
//    static var previews: some View {
//        UIImage()
//    }
//}
