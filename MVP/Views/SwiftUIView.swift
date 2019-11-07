//
//  SwiftUIView.swift
//  MVP
//
//  Created by matt bowlin on 10/24/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var onDismiss: () -> ()
    
    var body: some View {
        Button(action: { self.onDismiss() }) {
            Text("Dismiss")
        }
    }
}

struct ContentView2: View {
    @State var modalDisplayed = false
    
    var body: some View {
        Button(action: { self.modalDisplayed = true }) {
            Text("Show Modal")
        }.sheet(isPresented: $modalDisplayed) {
            DetailView(onDismiss: {
                self.modalDisplayed = false
            })
        }
    }
}

#if DEBUG
struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
#endif
