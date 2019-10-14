//
//  DataService.swift
//  MVP
//
//  Created by matt bowlin on 10/9/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation

class DataService {
    static let shared = DataService()
    fileprivate let baseURLString = "https//api.github.com"
    
    func fetchGists(completion: @escaping (Result<[Gist], Error>) -> Void){
//        var baseURL = URL(string: baseURLString)
//        baseURL?.appendPathComponent("/SomePath")
//        let composedURL = URL(string:"/somepath", relativeTo: baseURL)
        
        var componetURL = URLComponents()
        componetURL.scheme = "https"
        componetURL.host = "api.github.com"
        componetURL.path = "/gists/public"
        
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
                let gists = try JSONDecoder().decode([Gist].self, from: validData)
                completion(.success(gists))
            } catch let serialicationError {
                completion(.failure(serialicationError))
            }
            
        }.resume()
        
        
    }
}
