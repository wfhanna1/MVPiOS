//
//  AddGameViewModel.swift
//  MVP
//
//  Created by matt bowlin on 10/25/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class AddGameViewModel: ObservableObject {
    let didChange = PassthroughSubject<AddGameViewModel,Never>()
    let objectWillChange = ObservableObjectPublisher()
    
    init() {
        fetchPlayers()
    }

    var players = [Player](){
        willSet {
            self.objectWillChange.send()
            
            
        }
        didSet{
            print("Players changed")
            //didChange.send(self)
        }
    }

    func fetchPlayers(){

        APIServices.shared.fetchPlayers() { (result) in
            switch result {
            case .success(let playersReturn):
                self.players = playersReturn
                //self.didChange.send(self)
            case .failure(let error):
                print(error)
            }

        }
        
    }
    
    
}
