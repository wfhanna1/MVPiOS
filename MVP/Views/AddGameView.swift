//
//  AddGame.swift
//  MVP
//
//  Created by matt bowlin on 10/24/19.
//  Copyright © 2019 Insight. All rights reserved.
//  https://mecid.github.io/2019/06/05/swiftui-making-real-world-app/

import SwiftUI

struct AddGameView: View {
    //@Environment(\.presentationMode) var presentation
    var onDismiss: () -> ()
    @State  var gameSelection = 0
    @State private var query: String = "Search"
    @ObservedObject var model = AddGameViewModel()
    
    
    init(dismiss: @escaping () -> ()){
        onDismiss = dismiss
        
        AddGameViewModel.init()
        self.gameSelection = 1
    }
    
    
    var body: some View {
        VStack(alignment:.leading) {
            
            ZStack(alignment:.topLeading){
                Image("Short-Background").resizable().scaledToFit()
                Text("Add Game")
                    .colorInvert()
                    .font(.system(size: 60))
                    .padding()
                
            }
            //            Form{
            //Text(String(self.gameSelection))
            Section{
                Picker(selection: self.$gameSelection, label: Text("Game"))
                {
                    Text("Foosball")
                    Text("Ping Pong")
                    Text("Sclask")
                    Text("Smash Bros")
                }
            }
            List {
                TextField("Type something...", text: $query, onCommit: fetch)
                    .foregroundColor(Color.gray)
                ForEach(model.players) { player in
                    AddGameRowView(player: player)
                    
                }
            }
            
            Spacer()
            
            //            TextField()
            Button("Dismiss") {
                self.onDismiss()
            }
            
        }
        //.onAppear(perform: fetch)
        
        
    }
}
private func fetch() {
    print("Add games appeared")
    //AddGameViewModel.init()
    
    //repoStore.fetch(matching: query)
}



struct AddGameRowView: View {
    @State var winner = false
    @State var looser = false
    
    var player: Player
    
    
    init(player: Player)
    {
        self.player = player
    }
    
    var body: some View{
        HStack{
            Text(player.fullName)
            
            Spacer()
            
            if(winner)
            {
                Text("W")
                    .bold()
                    .padding()
                    .foregroundColor(.green)
                    .onTapGesture {
                        self.winner.toggle()
                }
            }
            else
            {
                Text("W")
                    .bold()
                    .padding()
                    .onTapGesture {
                        self.winner.toggle()
                }
            }
            
            if(looser)
            {
                Text("L")
                    .bold()
                    .padding()
                    .foregroundColor(.yellow)
                    .onTapGesture {
                        self.looser.toggle()
                }
            }
            else
            {
                Text("L")
                    .bold()
                    .padding()
                    .onTapGesture {
                        self.looser.toggle()
                }
            }
        }
    }
    
}




//
//struct AddGame_Previews: PreviewProvider {
//    static var previews: some View {
//        AddGame()
//    }
//}
