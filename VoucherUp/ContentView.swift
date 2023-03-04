//
//  ContentView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 04/03/23.
//

import SwiftUI

struct ContentView: View {
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
            ScrollView(.vertical, showsIndicators: true){
                VStack(alignment: .leading){
                    
                }
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
