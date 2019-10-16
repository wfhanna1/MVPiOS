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
     static let shared = ScoreRepo()
      
        
        func fetchScores(completion: @escaping (Result<[score], Error>) -> Void){
    //        var baseURL = URL(string: baseURLString)
    //        baseURL?.appendPathComponent("/SomePath")
    //        let composedURL = URL(string:"/somepath", relativeTo: baseURL)
            
            var componetURL = URLComponents()
            componetURL.scheme = "https"
            componetURL.host = "insightmvp-dev.azurewebsites.net"
            componetURL.path = "/api/Matches/recent"
            
            guard let validURL = componetURL.url else {
                //print("url invald")
                return
            }
            
            URLSession.shared.dataTask(with: validURL) {(data,response,error) in
                
                guard let validData = data, error == nil else{
                    completion(.failure(error!))
                    return
                }
                
                do {
                    //let json = try JSONSerialization.jsonObject(with: validData, options:[])
                    let scores = try JSONDecoder().decode([score].self, from: validData)
                    completion(.success(scores))
                } catch let serialicationError {
                    completion(.failure(serialicationError))
                }
                
            }.resume()
            
            
        }
    
}
