//
//  CartView.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            
            if (cartManager.products.count > 0) {
                
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(create: product)
                }
                
//                HStack {
//                    Text("You cart is ")
//                    Spacer()
//
//                    Text("\(cartManager.total) $")
//                        .bold()
//                }
//                .padding()
                
            } else {
                Text("Your card is empty")
            }
        }
        .navigationTitle(Text("My Look"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
