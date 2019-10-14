//
//  ScoresListViewModel.swift
//  MVP
//
//  Created by matt bowlin on 10/11/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class ScoreListViewModel: ObservableObject {
    let didChange = PassthroughSubject<ScoreListViewModel,Never>()

    init() {
        fetchScores()
    }

    var scores = [score](){
        didSet {
            self.didChange.send(self)
        }
    }

    func fetchScores(){

        ScoreRepo.shared.fetchScores { (result) in
            switch result {
            case .success(let scoresReturn):
                self.scores = scoresReturn
                self.didChange.send(self)
            case .failure(let error):
                print(error)
            }

        }
    }
    
    
}
