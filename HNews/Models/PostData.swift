//
//  PostData.swift
//  HNews
//
//  Created by Gabriel Meira on 30.01.20.
//  Copyright © 2020 Gabriel Meira. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
