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
        
        var componetURL = URLComponents()
        componetURL.scheme = Environment.httpScheme
        componetURL.host = Environment.baseUrl
        componetURL.path = Environment.scoreUrl
        
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
    
    func fetchLeaderBoard(completion: @escaping (Result<[Leader], Error>) -> Void){
        
        var componetURL = URLComponents()
        componetURL.scheme = Environment.httpScheme
        componetURL.host = Environment.baseUrl
        componetURL.path = Environment.leaderboardUrl
        
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
                let Leaders = try JSONDecoder().decode([Leader].self, from: validData)
                completion(.success(Leaders))
            } catch let serialicationError {
                completion(.failure(serialicationError))
            }
            
        }.resume()
        
        
    }
    func fetchPlayers(completion: @escaping (Result<[Player], Error>) -> Void){
        
        var componetURL = URLComponents()
        componetURL.scheme = Environment.httpScheme
        componetURL.host = Environment.baseUrl
        componetURL.path = Environment.playersUrl
        
        guard let validURL = componetURL.url else {
            //print("url invald")
            return
        }
        print(validURL)
        
        URLSession.shared.dataTask(with: validURL) {(data,response,error) in
            
            guard let validData = data, error == nil else{
                completion(.failure(error!))
                return
            }
            
            do {
                //let json = try JSONSerialization.jsonObject(with: validData, options:[])
                print(validData)
                let Players = try JSONDecoder().decode([Player].self, from: validData)
                completion(.success(Players))
            } catch let serialicationError {
                print(serialicationError)
                completion(.failure(serialicationError))
            }
            
        }.resume()
        
        
    }
    
}
