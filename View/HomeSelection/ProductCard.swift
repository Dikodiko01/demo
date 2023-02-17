//
//  ProductCard.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct ProductCard: View {
    var product: HomeModel
    
    var body: some View {
        VStack {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text(" это круто \(product.name)")
        }

    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: HomeModel.all[0])
    }
}
