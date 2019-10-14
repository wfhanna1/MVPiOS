//
//  GistListViewModel.swift
//  MVP
//
//  Created by matt bowlin on 10/9/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class GistListViewModel: ObservableObject {
    
    init() {
        fetchGists()
    }

    var gists = [Gist](){
        didSet {
            didChange.send(self)
        }
    }

    private func fetchGists(){

        DataService.shared.fetchGists { (result) in
            switch result {
            case .success(let gistsReturn):
                self.gists = gistsReturn
            case .failure(let error):
                print(error)
            }

        }
    }
    
    let didChange = PassthroughSubject<GistListViewModel,Never>()
}
