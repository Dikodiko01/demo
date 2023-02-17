//
//  CreateViewDetail.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import SwiftUI

struct CreateViewDetail: View {
    var create: CreateModel
    
    var body: some View {
        VStack {
            Image(create.image)
                .resizable()
                .scaledToFit()
            
            Text(create.name)
        }
    }
}

struct CreateViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        CreateViewDetail(create: CreateModel.all[0])
    }
}
