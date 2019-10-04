//
//  ScoresViewModel.swift
//  MVP
//
//  Created by matt bowlin on 10/4/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Combine

class ScoresVM: ObservableObject {
    
    var scores: [Scores] = [] {
        didSet {
            didChange.send(self)
        }
    }
    
    var didChange = PassthroughSubject<ScoresVM, Never>()
    
    func search() {
       
        
//        APICaller.shared.callGetAllNewsAPI(param: param) { [weak self](success, errorMsg, artcl) in
//            if success {
//                self?.articals = artcl
//            }
//            else {
//                self?.articals = []
//            }
//        }
    }
}
