//
//  Gist.swift
//  MVP
//
//  Created by matt bowlin on 10/9/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation

struct Gist: Codable, Hashable, Identifiable {
    var id: String
    var isPublic: Bool
    //var description: String
    
    //use this if the object property name dose not match the json key
    enum CodingKeys: String, CodingKey {
        case id, isPublic = "public"
    }
}
