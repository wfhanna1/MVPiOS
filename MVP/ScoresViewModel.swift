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
    
    func GetCurrentScores(userCompletionHandler: @escaping ([score], Error?) -> Void) {
        let scoreRepo = ScoreRepo()
        scoreRepo.GetScoresFromAPI(userCompletionHandler: {data, error in
            self.currentScore = data
            self.didChange.send(self)
        })
    }
    
    
}
