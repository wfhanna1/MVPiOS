//
//  LeaderBoardView.swift
//  MVP
//
//  Created by matt bowlin on 10/18/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import SwiftUI

struct LeaderBoardView: View {
    @ObservedObject var model = LeaderBoardViewModel()
    
    var body: some View {
        VStack{
            Image("HomeBackgroud")
                .scaledToFit()
            List(model.Leaders){leader in
                //Text(String(score.id))
                 //leaderId = String(leader.id)
                Text("\(leader.id)")// + " - " + leader.average)

                
            }
        }
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
