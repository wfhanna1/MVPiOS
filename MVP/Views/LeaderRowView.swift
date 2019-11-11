//
//  LeaderRowView.swift
//  MVP
//
//  Created by matt bowlin on 10/23/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import SwiftUI

struct LeaderRowView: View {
    var leader: Leader
    
    @ObservedObject var remoteImageUrl: RemoteImageUrl
    
    init(leader: Leader) {
        self.leader = leader
        remoteImageUrl = RemoteImageUrl(imageUrl: leader.player[0].profilePhoto)
    }
    
    var body: some View {
        
        HStack
            {
                Image(uiImage: ((self.remoteImageUrl.data.isEmpty) ? UIImage(named: "cage") : UIImage(data: self.remoteImageUrl.data))!)
                    .resizable()
                    .aspectRatio(contentMode: .fit).frame(width: 75, height: 75)
                    .clipShape(Circle())
                VStack (alignment: .leading){
                    Text("Foosball").font(.headline).foregroundColor(.pink)
                    Text("\(leader.player[0].fullName)").bold()
                    Text("\(leader.average) Points")
                }.padding(.leading)
                Spacer()
        }
    }
}

//struct LeaderRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        //LeaderRowView(leader:leader)
//    }
//}
