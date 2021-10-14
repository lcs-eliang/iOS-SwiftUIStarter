//
//  LoadingView.swift
//  SwiftUI Starter
//
//  Created by Emily Liang on 2021/10/14.
//

import SwiftUI

struct LoadingView: View {
    
    let text: String
    
    var body: some View {
        
        VStack(spacing:8) {
            ProgressView()
            Text("Fetching Quotes")
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: "Fetching Quotes")
    }
}
