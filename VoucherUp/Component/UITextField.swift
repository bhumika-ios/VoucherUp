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
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .multilineTextAlignment(.leading)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
    }
}

//struct UITextField_Previews: PreviewProvider {
//   
//    static var previews: some View {
//        UITextField(value: $email , placeholder: "email", icon: "envelop")
//    }
//}
