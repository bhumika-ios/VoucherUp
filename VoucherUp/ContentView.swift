//
//  ContentView.swift
//  VoucherUp
//
//  Created by Bhumika Patel on 04/03/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
           FirstView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .toolbar(.visible, for: .tabBar)

                    .toolbarBackground(Color.yellow, for: .tabBar)

                Text("Search")
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                    .toolbar(.visible, for: .tabBar)

                    .toolbarBackground(Color.yellow, for: .tabBar)

                Text("Payment")
                    .tabItem {
                        Label("Payment", systemImage: "square.topthird.inset.filled")
                    }
                    .toolbar(.visible, for: .tabBar)

                    .toolbarBackground(Color.yellow, for: .tabBar)
            Text("My VoucherUp")
                .tabItem {
                    Label("My VoucherUp", systemImage: "heart.square.fill")
                }
                .toolbar(.visible, for: .tabBar)

                .toolbarBackground(Color.yellow, for: .tabBar)
                Text("Me")
                    .tabItem {
                        Label("Me", systemImage: "photo.circle.fill")
                    }
                    .toolbar(.visible, for: .tabBar)

                    .toolbarBackground(Color("Primary"), for: .tabBar)
        }
       // .toolbarBackground(.red, for: .tabBar)
//        .onAppear() {
//            UITabBar.appearance().backgroundColor = UIColor(Color("Primary"))
//            }
        .accentColor(Color("MainColor"))
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
