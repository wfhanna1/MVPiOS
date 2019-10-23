//
//  RemoteImageUrl.swift
//  MVP
//
//  Created by matt bowlin on 10/23/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import SwiftUI

class RemoteImageUrl: ObservableObject {
    @Published var data = Data()
    
    init(imageUrl: String?) {
        let upURL: String = imageUrl == nil ? "https://www.placecage.com/100/100" : imageUrl!
        guard let url = URL(string: upURL) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}
