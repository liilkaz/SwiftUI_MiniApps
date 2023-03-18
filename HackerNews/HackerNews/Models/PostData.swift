//
//  PostData.swift
//  TechNews
//
//  Created by Лилия Феодотова on 18.03.2023.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let author: String
    let points: Int
    
}
