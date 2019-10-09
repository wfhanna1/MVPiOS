//
//  TestView2.swift
//  MVP
//
//  Created by matt bowlin on 10/9/19.
//  Copyright © 2019 Insight. All rights reserved.
//

import SwiftUI




struct GistView: View {
    
    @State var model = GistListViewModel()
    
    var body: some View {
     
        List(model.gists){gist in
            Text(gist.id)
        }
    }
}

struct TestView2_Previews: PreviewProvider {
    static var previews: some View {
        GistView()
    }
}
