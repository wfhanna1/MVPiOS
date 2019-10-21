//
//  ContentView.swift
//  MVP
//
//  Created by Hanna, Wasim on 10/3/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {

        TabView(selection: $selection){
            LeaderBoardView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "list.number")
                        Text("Scores")
                    }
                }
                .tag(0)
            ScoreView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.3")
                        Text("Games")
                    }
                }	
                .tag(1)
           LeaderBoardView()
                .tabItem {
                      VStack {
                          Image(systemName: "list.number")
                          Text("Scores")
                      }
                  }
           .tag(2)
            


            
        }//.accentColor(Color(UIColor(red:0.30, green:0.16, blue:0.36, alpha:1.0))).accentColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/).background(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/).blendMode(/*@START_MENU_TOKEN@*/.darken/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
