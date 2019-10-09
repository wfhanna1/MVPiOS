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
    func GetScoresFromAPI(userCompletionHandler: @escaping ([score], Error?) -> Void)
    {
        let scoresApi = ApiWrapper()
        
        scoresApi.get(from: "https://insightmvp-dev.azurewebsites.net/api/Matches/recent", userCompletionHandler: {data
            , error in
            userCompletionHandler(self.getdata(data: data!),nil)
        })
    }
    
    func getdata(data: String) -> [score] {
        let decoder = JSONDecoder()
        //let json = try? JSONSerialization.jsonObject(with: data, options: [])

        let jsonData = data.data(using: .utf8)!
        //let scoresObject = try? JSONDecoder().decode(score.self, from: jsonData)
        let scoresObject = try! decoder.decode([score].self,  from: jsonData)
        return scoresObject
    }
    
}
