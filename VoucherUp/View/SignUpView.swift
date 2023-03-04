//
//  SignUpView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 04/03/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var password = ""
    @State private var selectedGenderIndex: Int = 0
        
    private var genderOptions = ["🙍‍♂️ Male", "🙍‍♀️ Female", "🤖 Other"]
    var body: some View {
        VStack{
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
                        Text("Sign up for VoucherUp Rewards").bold()
                            .font(.system(size: 22))
                            .foregroundColor(Color("Main2Color"))
                        
                        Text("Let's get known each other")
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
                        HStack{
                            UITextField1(value: $firstName, placeholder: "First Name")
                            UITextField1(value: $firstName, placeholder: "Last Name")
                        }
                        .padding()
                        UITextField2(value: $email, placeholder: "Email")
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .padding()
                           
                        UITextField2(value: $password, placeholder: "Password", isSecure: true)
                            .autocapitalization(.none)
                            .padding()
                            .padding(.vertical,-30)
                        HStack{
                            Text("Gender")
                                .padding()
                            Spacer()
                            Picker(selection: $selectedGenderIndex, label: Text("Gender")) {
                                ForEach(0..<genderOptions.count) {
                                    Text(self.genderOptions[$0])
                                }
                            }
                           
                        }
                        .frame(width: 330, height: 45)
                        .background(
                            Rectangle()
                                .fill(Color.white)
                                .cornerRadius(18)
                                .shadow(
                                    color: Color.gray.opacity(0.7),
                                    radius: 8,
                                    x: 0,
                                    y: 8
                                )
                        )
                        .padding()
                        .padding(.vertical,-1)
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
                              
                            Button(action: {}, label: {
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
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
