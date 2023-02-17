//
//  CreateList.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct CreateList: View {
    @EnvironmentObject var cartManager: CartManager
    var creates: [CreateModel]
    
    let column = [
            GridItem(.flexible()),
            GridItem(.flexible()),
        ]
    
    var body: some View {
        ScrollView {
            VStack {
                
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(creates) { create in
                        NavigationLink(destination: CreateViewDetail(create: create)) {
                            CreateCard(create: create)
                                .padding()
                        }
                    }
                }
                .padding(.horizontal)
            }
            
        }
    }
}

struct CreateList_Previews: PreviewProvider {
    static var previews: some View {
        CreateList(creates: CreateModel.all)
    }
}
