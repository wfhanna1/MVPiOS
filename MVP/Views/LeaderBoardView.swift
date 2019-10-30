//
//  LeaderBoardView.swift
//  MVP
//
//  Created by matt bowlin on 10/18/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import SwiftUI

struct LeaderBoardView: View {
    @State var showModal: Bool = false
    @State var isLoaded: Bool = false
    @ObservedObject var model = LeaderBoardViewModel()

    let fontColor = UIColor(red:0.88, green:0.15, blue:0.40, alpha:1.0)
    
    init(){
        LeaderBoardViewModel.init()
        isLoaded = true
    }
    
    var body: some View {

        VStack{
//            Button(action: { self.showModal = false}) {
//                Text("Show Modal")
//            }.sheet(isPresented: $showModal) {
//                AddGAme(onDismiss: {
//                    self.showModal = false
//                })
//            }
            ZStack{
                Image("Tall-Background")
                    .resizable()
                    .scaledToFit()
                VStack{
                    Text("The Office MVP")
                        .colorInvert()
                        .font(.system(size: 50))
                        .padding()
                    if(model.Leaders.count > 0)
                    {
                        LeaderRowView(leader: model.Leaders[0])
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding()
                            .shadow(radius: 20, y: 20)
                            
                    }
                }
                Spacer()
            }
            //Image("HomeBackgroud")

            
          
            
            ZStack(alignment:.bottomTrailing){
                
                List(model.Leaders){leader in
                    LeaderRowView(leader: leader)
                }
                Button(action: {
                    self.showModal = true
                }){
                    Text("+ Add Game")
                        .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
                        .background(Color(red:0.30, green:0.16, blue:0.36))
                        .cornerRadius(.infinity)
                    
                }.sheet(isPresented: $showModal) {
                    AddGameView(dismiss: {
                        self.showModal = false
                    })
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
