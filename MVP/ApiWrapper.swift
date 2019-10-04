//
//  APIWrapper.swift
//  MVP
//
//  Created by Hanna, Wasim on 10/4/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation

class ApiWrapper {
     func get(from urlString: String) -> String {
        let url = URL(string: urlString)!
        let request = URLRequest(url: url)
        var responseString = ""
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                return
            }
            do {
                responseString = String(data: data, encoding: .utf8) ?? responseString
            }
        }
        task.resume()
        return responseString
    }
    
//    public func post(from urlString: String) {
//          let url = URL(string: urlString)!
//           var request = URLRequest(url: url)
//           request.httpMethod = "POST"
//           request.httpBody = ...
//
//           let task = URLSession.shared.dataTask(with: request) { data, response, error in
//               guard let data = data, error == nil else {
//                   print("error=\(error)")
//                   return
//               }
//
//               print("response = \(response)")
//
//               let responseString = String(data: data, encoding: .utf8)
//               print("responseString = \(responseString)")
//           }
//           task.resume()
//       }
}
