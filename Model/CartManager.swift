//
//  CartManager.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [CreateModel] = []
    @Published private(set) var total: Int = 0
    @Published private(set) var selector: Bool = false
    
    
    func addToCart(product: CreateModel) {
        products.append(product)
        total += product.price
    }
    
    func removeElement(product: CreateModel) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
    
    func topCategory(product: CreateModel) {
        
    }
}
