//
//  ContentView.swift
//  XCANews
//
//  Created by Alfian Losari on 6/27/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NewsTabView()
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
            
            HomeView()
                .tabItem {
                    Label("OOTD", systemImage: "house")
                }
            CreateView()
                .tabItem {
                    Label("Create Style", systemImage: "bag")
                }
//            SearchTabView()
//                .tabItem {
//                    Label("Search", systemImage: "magnifyingglass")
//                }
//
//            BookmarkTabView()
//                .tabItem {
//                    Label("Saved", systemImage: "bookmark")
//                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
