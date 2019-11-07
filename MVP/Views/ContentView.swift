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
 
    init() {
        UITabBar.appearance().barTintColor =  UIColor(red:0.30, green:0.16, blue:0.36, alpha:1.0)
        //LeaderBoardViewModel.init()
    }
    
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
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
