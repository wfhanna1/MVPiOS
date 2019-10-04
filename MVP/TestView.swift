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
        testApi.get(from: "https://insightmvp-dev.azurewebsites.net/api/Matches/recent", userCompletionHandler: {data, error in
            print(data)
        })
        return Text("Dummy Text")
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
