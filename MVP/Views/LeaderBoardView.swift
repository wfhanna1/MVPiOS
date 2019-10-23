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
    
    init(){
        LeaderBoardViewModel.init()
    }
    
    var body: some View {
        
        VStack{
            Image("HomeBackgroud")
                .scaledToFit()
            
            ZStack(alignment:.bottomTrailing){
                
                List(model.Leaders){leader in
                    LeaderRowView(leader: leader)
                }
                Button(action:{}){
                    Text("+ Add Game")
                        .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                        .background(Color(red:0.30, green:0.16, blue:0.36))
                        .cornerRadius(.infinity)
                    
                }
                .shadow(radius: 20, y: 20)
                .padding(12)
                
            }
            
        }
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
    }
}
