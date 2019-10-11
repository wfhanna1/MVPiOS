//
//  Scores.swift
//  MVP
//
//  Created by matt bowlin on 10/7/19.
//  Copyright © 2019 Insight. All rights reserved.
//


import Foundation


// MARK: - WelcomeElement
struct score: Codable, Identifiable {

    
    var id: Int
//    var playerAID: Int
//    let playerA: PlayerA
//    var playerBID: Int
//    let playerB: PlayerA
//    var playerAPrediction
//    var playerBPredicition: Int
//    var winnerID: Int
//    let winner: PlayerA
//    var gameID: Int
//    let game: Game
//    var date: String

//    enum CodingKeys: String, CodingKey {
//        case id
//        case playerAID = "playerAId"
//        case playerA
//        case playerBID = "playerBId"
//        case playerB, playerAPrediction, playerBPredicition
//        case winnerID = "winnerId"
//        case winner
//        case gameID = "gameId"
//        case game, date
//    }
    //static func getModels(json: [JsonDictionary]) -> [score] {return json.map { score(json: $0) }}
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

