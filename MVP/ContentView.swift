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
            Text("First View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
            GistView()
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }	
                .tag(1)
           TestView()
                .tabItem {
                      VStack {
                          Image("first")
                          Text("Third")
                      }
                  }
                  .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
