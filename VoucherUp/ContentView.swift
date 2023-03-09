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

                Text("Notification")
                    .tabItem {
                        Label("Notification", systemImage: "bell")
                    }
                    .toolbar(.visible, for: .tabBar)

                    .toolbarBackground(Color.yellow, for: .tabBar)

                Text("Settings")
                    .tabItem {
                        Label("Settings", systemImage: "gearshape")
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
