//
//  ContentView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 04/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var email = "bhumi@test.com"
    @State private var password = "Abc@123"
    var body: some View {
        VStack {
            GeometryReader { geometry in
                Image("BI1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                   // .offset(y: geometry.frame(in: .global).midY/50)
                   // .padding(.bottom)
                    .edgesIgnoringSafeArea(.all)
                
            }
            VStack{
                VStack(alignment: .center, spacing: 1.0){
                    VStack(alignment: .center, spacing: 10){
                        Text("Welcome Back.").bold()
                            .font(.system(size: 26))
                        
                        Text("Log in to get started.")
                            .foregroundColor(Color("Primary"))
                           
                           // .padding(.leading)
                        Divider()
                            .padding(.leading)
                        // divider with short to with and height set
                            .frame(width: 250, height: 1)
                        // divider color set
                            .overlay(.black)
                            
                    }
                    .padding(.vertical,40)
                   
                    VStack(alignment: .leading, spacing: 20){
                        UITextField(value: $email, placeholder: "email", icon: "envelope.fill")
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .padding()
                           
                        UITextField(value: $password, placeholder: "password", isSecure: true, icon: "lock.fill")
                            .autocapitalization(.none)
                            .padding()
                            .padding(.vertical,-30)
                    }
                    .padding()
                    .padding(.vertical,25)
                    VStack(alignment: .leading, spacing: 20){
                        Button(action: {}, label: {
                            Text("LogIn")
                                .frame(width: 330, height: 45)
                            
                                .background(
                                    Rectangle()
                                        .fill(Color("Primary"))
                                        .cornerRadius(15)
                                        .shadow(
                                            color: Color.gray.opacity(0.7),
                                            radius: 8,
                                            x: 0,
                                            y: 8
                                        )
                                    )
                        })
                    }
                    .padding()
                    
                }
            }
            .padding(.top)
            .background(Color.white)
            .clipShape(Rounded())
            .padding(.top, -100)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
