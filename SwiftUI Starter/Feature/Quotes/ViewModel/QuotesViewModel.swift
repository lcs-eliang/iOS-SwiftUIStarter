//
//  QuotesViewModel.swift
//  SwiftUI Starter
//
//  Created by Emily Liang on 2021/10/14.
//

import Foundation

protocol QuoteViewModel: ObservableObject {
    func getRandomQuotes() async
    
}

@MainActor
final class QuotesViewModelImpl: QuoteViewModel {
    
    @Published private(set) var quotes: [Quote] = []
    
    private let service: QuotesService
    
    init(service: QuotesService) {
        self.service = service
    }
    
    func getRandomQuotes() async {
        do {
            self.quotes = try await service.fetchRandomQuotes()
        } catch {
            print(error)
        }
    }
}
