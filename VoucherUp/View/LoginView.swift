//
//  LoginView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 04/03/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSignUp: Bool = false
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
//               Text("VoucherUp")
//                    .font(.largeTitle).bold()
//                    .foregroundColor(.bl)
//                    .padding()
                    
            }
            VStack{
                VStack(alignment: .center, spacing: 1.0){
                    VStack(alignment: .center, spacing: 10){
                        Text("Welcome Back.").bold()
                            .font(.system(size: 26))
                            .foregroundColor(Color("Main2Color"))
                        
                        Text("Log in to get started.")
                            .foregroundColor(Color("Main2Color"))
                           
                           // .padding(.leading)
                        Divider()
                            
                            .padding(.leading)
                        // divider with short to with and height set
                            .frame(width: 250, height: 1)
                        // divider color set
                            .overlay(Color("Main2Color"))
                            
                    }
                    .padding(.vertical)
                   
                    VStack(alignment: .leading, spacing: 20){
                        UITextField(value: $email, placeholder: "Email", icon: "envelope")
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .padding()
                           
                        UITextField(value: $password, placeholder: "Password", isSecure: true, icon: "lock")
                            .autocapitalization(.none)
                            .padding()
                            .padding(.vertical,-30)
                    }
                  //  .padding()
                    .padding(.vertical,25)
                    VStack(alignment: .leading, spacing: 20){
                        Button(action: {}, label: {
                            Text("Log In").bold()
                                .frame(width: 330, height: 45)
                                .foregroundColor(Color("MainColor"))
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
                    VStack(spacing: 20){
                        HStack{
                            Text("Not a member?")
                              
                            Button(action: {isSignUp = true}, label: {
                                Text("Sign up now")
                            })
                        }
                        .foregroundColor(Color("LinkColor"))
                    }
                    .padding()
                    VStack(spacing: 20){
                        Button(action: {}, label: {
                            Text("Forgot your password?")
                        })
                        .foregroundColor(Color("LinkColor"))
                    }
                }
            }
            .padding()
            .background(Color("MainColor"))
            .clipShape(Rounded())
            .padding(.top, -100)
        }
        .fullScreenCover(isPresented: $isSignUp ){
            SignUpView()
        }
    }
    func signUp(){
        isSignUp = true
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
