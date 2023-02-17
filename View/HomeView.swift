//
//  HomeView.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ProductList(products: HomeModel.all)
                .navigationTitle("Hello :)")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
