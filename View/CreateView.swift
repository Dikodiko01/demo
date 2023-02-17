//
//  CreateView.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct CreateView: View {
    @StateObject var cartManager = CartManager()
    
    var body: some View {
        NavigationView {
            CreateList(creates: CreateModel.all)
                .environmentObject(cartManager)
                .navigationTitle("Create your style")
                .toolbar {
                    NavigationLink {
                        CartView()
                            .environmentObject(cartManager)
                    } label: {
                        CardButton(numberOfProduct: cartManager.products.count)
                    }
                }
        }
    }
}


struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
