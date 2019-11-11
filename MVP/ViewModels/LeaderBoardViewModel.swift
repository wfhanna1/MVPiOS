//
//  LeaderBoardViewModel.swift
//  MVP
//
//  Created by matt bowlin on 10/18/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class LeaderBoardViewModel: ObservableObject {
    let didChange = PassthroughSubject<LeaderBoardViewModel,Never>()
    let objectWillChange = ObservableObjectPublisher()
    
    init() {
        fetchLeaders()
    }

    var Leaders = [Leader](){
        willSet{
            DispatchQueue.main.async {
                self.objectWillChange.send()
            }
//            self.objectWillChange
//                .receive(on: RunLoop.main)
//                .send()
        }
        didSet {
            //didChange.send(self)
        }
    }

    func fetchLeaders(){

        APIServices.shared.fetchLeaderBoard() { (result) in
            switch result {
            case .success(let scoresReturn):
                self.Leaders = scoresReturn
                //self.didChange.send(self)
            case .failure(let error):
                print(error)
            }

        }
    }
    
    
}
