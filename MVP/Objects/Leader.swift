//
//  Leader.swift
//  MVP
//
//  Created by matt bowlin on 10/18/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation

// MARK: - LeaderElement
struct Leader: Codable, Identifiable {
    let average, id: Int
    let player: [Player]
    let games: Int
}

// MARK: - Player
//struct Player: Codable {
//    let id: Int
//    let fullName, emailAddress: String
//    let profilePhoto: String?
//}

