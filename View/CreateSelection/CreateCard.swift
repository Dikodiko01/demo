//
//  CreateCard.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct CreateCard: View {
    @EnvironmentObject var cartManager: CartManager
    
    var create: CreateModel
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Image(create.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Text(create.name)
            }
            
            Button {
                cartManager.addToCart(product: create)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct CreateCard_Previews: PreviewProvider {
    static var previews: some View {
        CreateCard(create: CreateModel.all[0])
            .environmentObject(CartManager())
    }
}
