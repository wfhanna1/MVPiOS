//
//  ScoresView.swift
//  MVP
//
//  Created by matt bowlin on 10/11/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import SwiftUI


struct ScoreView: View {
    
    @State var model = ScoreListViewModel()
    
    var body: some View {
     
        List(model.scores){score in
            Text(String(score.id))
        }
    }
}

struct ScoresView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
