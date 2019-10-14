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
    var playerAId: Int
    var playerA: Player
    var playerBId: Int
    var playerB: Player
    var playerAPrediction: Decimal
    var playerBPredicition: Decimal
    var winnerId: Int
    var winner: Player
    var gameId: Int
    var game: Game
    var date: String

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
    var id: Int
    var name: String
    var kFactor: Int
}

// MARK: - PlayerA
struct Player: Codable {
    var id: Int
    var fullName: String
    var emailAddress: String
    //var profilePhoto: String
}

//typealias Welcome = [WelcomeElement]

