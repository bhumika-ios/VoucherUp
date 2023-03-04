//
//  UITextField.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 04/03/23.
//

import SwiftUI

struct UITextField: View {
    @Binding var value: String
    var placeholder: String
  
    var isSecure:Bool = false
    var icon: String
    var body: some View {
        HStack{
            Image(systemName: icon).padding()
            if isSecure {
                SecureField(placeholder, text: $value).autocapitalization(.none)
            }else{
                TextField(placeholder,text: $value).font(Font.system(size: 18, design: .monospaced))
            }
            
        }
        
        .foregroundColor(.black)
        //.textFieldStyle(RoundedBorderTextFieldStyle())
        .multilineTextAlignment(.leading)
      
        .background(
            Rectangle()
                .fill(Color.white)
                .cornerRadius(15)
                .shadow(
                    color: Color.gray.opacity(0.7),
                    radius: 8,
                    x: 0,
                    y: 8
                )
            )
        
//      //  .background(Color(.white))
//        RoundedRectangle(cornerRadius: 15)
//            .frame(width: 250, height: 100)
//            .foregroundColor(Color(UIColor.systemIndigo))
//            .shadow(color: .pink, radius: 3, x: -2, y: 2)
//
////        RoundedRectangle(cornerRadius: 125)
////
////        .shadow(color: Color("LightShadow"), radius: 3, x: -2, y: 2)
////        .shadow(color: Color("DarkShadow"), radius: 25, x: 8, y: 8)
    }
}

//struct UITextField_Previews: PreviewProvider {
//   
//    static var previews: some View {
//        UITextField(value: $email , placeholder: "email", icon: "envelop")
//    }
//}
