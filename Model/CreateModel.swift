//
//  CreateModel.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import Foundation

//enum Category: String, Identifiable, CaseIterable {
//    var id: String { self.rawValue }
//
//    case top = "Top"
//    case bottom = "Bottom"
//}

struct CreateModel: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let description: String
    let price: Int
}

extension CreateModel {
    static let all: [CreateModel] = [
        CreateModel(image: "cal-1", name: "Leather Jacket", description: "", price: 10),
        CreateModel(image: "cal-2", name: "Corduroy Jacket", description: "", price: 10),
        CreateModel(image: "cal-3", name: "Windbreaker", description: "", price: 10),
        CreateModel(image: "cal-4", name: "Black Vest", description: "", price: 10),
        CreateModel(image: "cal-5", name: "Denim", description: "", price: 2),
        CreateModel(image: "cal-6", name: "Pants", description: "", price: 2),
        CreateModel(image: "cal-7", name: "Brown", description: "", price: 2),
        CreateModel(image: "cal-8", name: "Pants", description: "", price: 2)
    ]
}
