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
    let fontColor = UIColor(red:0.88, green:0.15, blue:0.40, alpha:1.0)
    var body: some View {
        VStack{
            Image("HomeBackgroud")
                .scaledToFit()
            List(model.Leaders){leader in
                LeaderRowView(leader: leader)
              }
        }
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
