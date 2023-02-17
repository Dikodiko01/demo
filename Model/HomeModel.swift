//
//  HomeModel.swift
//  XCANews
//
//  Created by Diar Orynbek on 17.02.2023.
//

import Foundation

struct HomeModel: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let image1: String
    let image2: String
    let image3: String
}

extension HomeModel {
    static let all: [HomeModel] = [
        HomeModel(image: "photo-1", name: "76/365", image1: "75-1", image2: "75-2", image3: "75-3"),
        HomeModel(image: "photo-2", name: "100/365", image1: "76-1", image2: "76-2", image3: "76-3"),
        HomeModel(image: "photo-3", name: "90/365", image1: "73-1", image2: "73-2", image3: "73-3"),
        HomeModel(image: "photo-4", name: "10/365", image1: "74-1", image2: "74-2", image3: "74-3")
    ]
}
