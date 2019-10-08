//
//  ScoreRepo.swift
//  MVP
//
//  Created by matt bowlin on 10/8/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation

class ScoreRepo
{
    var currentScore:[score] = [];
    
    func GetScoresFromAPI()
    {
        let scoresApi = ApiWrapper()
        
        scoresApi.get(from: "https://insightmvp-dev.azurewebsites.net/api/Matches/recent", userCompletionHandler: {data
            , error in
            self.currentScore = self.getdata(data: data)})
        
    }
    
    func getdata(data: String) -> [score] {
        let decoder = JSONDecoder()
        //let json = try? JSONSerialization.jsonObject(with: data, options: [])

        let jsonData = data.data(using: .utf8)!
        let scoresObject = try! decoder.decode(score.self,  from: jsonData)
        return scoresObject
    }
    
}
