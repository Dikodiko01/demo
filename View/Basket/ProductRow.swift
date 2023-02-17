//
//  ProductRow.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var create: CreateModel
    
    var body: some View {
            ZStack(alignment: .topTrailing) {
                
                HStack() {
                    Image(create.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                        .cornerRadius(10)
                        .padding()
                }
            
                Image(systemName: "x.circle")
                    .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .onTapGesture {
                        cartManager.removeElement(product: create)
                    }
                    .padding()
                }
    }
}
            
//                VStack(alignment: .leading, spacing: 10) {
//                    Text(create.name)
//                        .padding()


struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(create: CreateModel.all[2])
            .environmentObject(CartManager())
    }
}
