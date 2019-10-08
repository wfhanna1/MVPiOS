//
//  ApiController.swift
//  MVP
//
//  Created by matt bowlin on 10/7/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ScoresViewModel: ObservableObject {
    
    let didChange = PassthroughSubject<ScoresViewModel, Never>()
    
    var currentScore:[score] = [];
    
    func GetCurrentScores() {
        let scoresApi = ScoresRepo()
        
        scoresApi.get(from: "https://insightmvp-dev.azurewebsites.net/api/Matches/recent", userCompletionHandler: {data
            , error in
            self.currentScore = self.getdata(data: data)})
        
        self.didChange.send(self)
        
    }
    
    
}
