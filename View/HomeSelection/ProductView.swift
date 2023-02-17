//
//  ProductView.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct ProductView: View {
    var product: HomeModel
    
    let column = [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    LazyVGrid(columns: column, spacing: 20) {
                        Image(product.image1)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                        
                        Image(product.image2)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                    }
                    Image(product.image3)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                    
                    
                    .navigationTitle("OOTD day is \(product.name)")
                }
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: HomeModel.all[0])
    }
}
