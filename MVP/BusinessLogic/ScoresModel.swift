//
//  ScoresRepository.swift
//  MVP
//
//  Created by matt bowlin on 10/4/19.
//  Copyright © 2019 Insight. All rights reserved.
//

//import Foundation

struct Score: Codable {
    let id, playerAID: Int
    let playerA: PlayerA
    let playerBID: Int
    let playerB: PlayerA
    let playerAPrediction, playerBPredicition, winnerID: Int
    let winner: PlayerA
    let gameID: Int
    let game: Game
    let date: String

    enum CodingKeys: String, CodingKey {
        case id
        case playerAID = "playerAId"
        case playerA
        case playerBID = "playerBId"
        case playerB, playerAPrediction, playerBPredicition
        case winnerID = "winnerId"
        case winner
        case gameID = "gameId"
        case game, date
    }
}

// MARK: - Game
struct Game: Codable {
    let id: Int
    let name: String
    let kFactor: Int
}

// MARK: - PlayerA
struct PlayerA: Codable {
    let id: Int
    let fullName, emailAddress, profilePhoto: String
}






//typealias Welcome = [WelcomeElement]
