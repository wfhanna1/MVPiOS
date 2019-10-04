//
//  TestView.swift
//  MVP
//
//  Created by Hanna, Wasim on 10/4/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        let testApi = ApiWrapper()
        var data = testApi.get(from: "https://insightmvp-dev.azurewebsites.net/api/Matches/recent")
        return Text("Hello World")
    }
    private func callRecentApi() {
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
