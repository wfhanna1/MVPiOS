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
    
    init() {
        fetchScores()
    }

    var scores = [score](){
        didSet {
            didChange.send(self)
        }
    }

    private func fetchScores(){

        ScoreRepo.shared.fetchScores { (result) in
            switch result {
            case .success(let scoresReturn):
                self.scores = scoresReturn
            case .failure(let error):
                print(error)
            }

        }
    }
    
    let didChange = PassthroughSubject<ScoreListViewModel,Never>()
}
