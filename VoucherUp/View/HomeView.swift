//
//  HomeView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 06/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
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
            VStack(alignment: .leading, spacing: 10){
                VStack{
                    VStack(alignment: .leading, spacing: 10){
                        Text("Welcome Onboard").bold()
                            .font(.system(size: 22))
                            .foregroundColor(Color("Main2Color"))
                            .multilineTextAlignment(.leading)
                        
                        Text("A world of rewards is waiting for you!")
                            .font(.system(size: 12))
                            .foregroundColor(Color("Main2Color"))
                        
                        // .padding(.leading)
                        Divider()
                        
                        
                        
                        //.padding(.leading)
                        // divider with short to with and height set
                            .frame(width: 250, height: 1)
                        // divider color set
                            .overlay(Color("Main2Color"))
                    }
                     .padding(.vertical,15)
                     .padding(.horizontal)
                    VStack{
                        VStack{
                            Text("Last, which merchants would you like to see more of?").bold()
                                .font(.system(size: 22))
                                .foregroundColor(Color("Main2Color"))
                            CategoryView()
                            
                            
                          
                          //  .padding()
                        }
                        .padding(.vertical)
                        VStack{
                            HStack{
                                Button(action: {}, label: {
                                    Text("Go Back").bold()
                                        .frame(width: 165, height: 45)
                                        .foregroundColor(Color("Main2Color"))
                                        .background(
                                            Rectangle()
                                                .fill(Color("MainColor"))
                                                .cornerRadius(15)
                                                .shadow(
                                                    color: Color.gray.opacity(0.7),
                                                    radius: 8,
                                                    x: 0,
                                                    y: 8
                                                )
                                        )
                                })
                                Button(action: {
                                  //  isOTPs = true
                                }, label: {
                                    Text("Get Started").bold()
                                        .frame(width: 165, height: 45)
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
                        }
                        .padding()
                        //                    VStack{
                        //                        HStack{
                        //                            UIImage(placeholder: "BI1")
                        //                            UIImage(placeholder: "BI1")
                        //
                        //
                        //
                        //
                        //
                        //                        }
                        //                        HStack{
                        //                            UIImage(placeholder: "BI1")
                        //                            UIImage(placeholder: "BI1")
                        //                        }
                        //                        UIImage(placeholder: "BI1")
                        //
                        //                    }
                        //                    .padding()
                    }
                }
            }
            .padding()
            .background(Color("MainColor"))
            .clipShape(Rounded())
            .padding(.top,-400)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
