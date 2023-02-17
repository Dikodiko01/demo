//
//  ProductList.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct ProductList: View {
    var products: [HomeModel]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("OOTD")
                    .bold()
                    .font(.system(size: 23))
                
                
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 20)]) {
                    ForEach(products) { product in
                        NavigationLink(destination: ProductView(product: product)) {
                            ProductCard(product: product)
                        }
                    }
                }
                
//                Button("Create Your OWN") { }
//                .padding()
//                .foregroundColor(.white)
//                .background(.blue)
//                .cornerRadius(20)
//                .padding()
            }
        }
    }
}


struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList(products: HomeModel.all)
    }
}
