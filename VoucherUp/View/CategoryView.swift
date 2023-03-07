//
//  CategoryView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 07/03/23.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        VStack{
           
                HStack{
                    Button(action: {}, label: {
                        Text("FASHION").bold()
                            .font(.title2)
                            .frame(width: 160, height: 100)
                            .foregroundColor(Color("MainColor"))
                            .background(
                                UIImage(placeholder: "BI1")
                                
                            )
                    })
                    ///  .padding()
                    Button(action: {}, label: {
                        Text("FOOD & BEVERAGE").bold()
                            .font(.title2)
                            .frame(width: 160, height: 100)
                            .foregroundColor(Color("MainColor"))
                            .background(
                                UIImage(placeholder: "BI1")
                                
                            )
                    })
                }
                
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
                    //  .padding()
                    Button(action: {}, label: {
                        Text("BEAUTY & WELLNESS").bold()
                            .font(.title2)
                            .frame(width: 160, height: 100)
                            .foregroundColor(Color("MainColor"))
                            .background(
                                UIImage(placeholder: "BI1")
                                
                            )
                    })
                }
                Button(action: {}, label: {
                    Text("ELECTRONICS").bold()
                        .font(.title2)
                        .frame(width: 160, height: 100)
                        .foregroundColor(Color("MainColor"))
                        .background(
                            UIImage(placeholder: "BI1")
                            
                        )
                })
            
        }
       // .padding(.vertical,50)
    }
    
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
