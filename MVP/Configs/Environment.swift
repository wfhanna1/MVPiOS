//
//  Environment.swift
//  MVP
//
//  Created by Wasim Hanna on 10/16/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation
public enum Environment {
    
    enum Keys {
      enum Plist {
        static let httpScheme = "HTTP_SCHEME"
        static let baseUrl = "BASE_URL"
        static let scoreUrl = "SCORE_URL"
        static let leaderboardUrl = "LEADERBOARD"
        static let playersUrl = "PLAYERS"
      }
    }
    
  
    private static let infoDictionary: [String: Any] = {
    guard let dict = Bundle.main.infoDictionary else {
      fatalError("Plist file not found")
    }
    return dict
    }()

   static let httpScheme: String = {
    guard let httpScheme = Environment.infoDictionary[Keys.Plist.httpScheme] as? String else {
          fatalError("HTTP SCHEME not set in plist for this environment")
        }
        return httpScheme
   }()

   static let baseUrl: String = {
    guard let baseUrl = Environment.infoDictionary[Keys.Plist.baseUrl] as? String else {
       fatalError("BASE_URL not set in plist for this environment")
     }
     return baseUrl
   }()
    
     static let scoreUrl: String = {
        guard let scoreUrl = Environment.infoDictionary[Keys.Plist.scoreUrl] as? String else {
          fatalError("SCORE_URL not set in plist for this environment")
        }
        return scoreUrl
      }()
    
     static let leaderboardUrl: String = {
        guard let leaderboardUrl = Environment.infoDictionary[Keys.Plist.leaderboardUrl] as? String else {
          fatalError("LEADERBOARD not set in plist for this environment")
        }
        return leaderboardUrl
      }()
    
    static let playersUrl: String = {
      guard let playersUrl = Environment.infoDictionary[Keys.Plist.playersUrl] as? String else {
        fatalError("LEADERBOARD not set in plist for this environment")
      }
      return playersUrl
    }()
}
