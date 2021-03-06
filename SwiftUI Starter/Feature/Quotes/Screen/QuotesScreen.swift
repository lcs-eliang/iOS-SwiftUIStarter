//
//  QuotesScreen.swift
//  SwiftUI Starter
//
//  Created by Emily Liang on 2021/10/7.
//

import SwiftUI

struct QuotesScreen: View {
    
    @StateObject private var vm = QuotesViewModelImpl(
        service: QuotesServiceImpl()
    )
    
    var body: some View {
        
        Group {
            if vm.quotes.isEmpty {
                LoadingView(text: "Fetchng Quotes")
            } else {
                List {
                    ForEach(vm.quotes, id: \.anime) { item in
                        QuoteView(item: item)
                    }
                }
            }
        }
        .task {
            await vm.getRandomQuotes()
        }
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
