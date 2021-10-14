//
//  Quote.swift
//  SwiftUI Starter
//
//  Created by Emily Liang on 2021/10/7.
//

import Foundation

struct Quote: Decodable {
    let anime: String
    let character: String
    let quote: String
}

extension Quote {
    
    static var dummyData: [Quote] = [
            Quote(anime: "Anime 1", character: "Character 1", quote: "Random fact 1"),
            Quote(anime: "Anime 2", character: "Character 2", quote: "Random fact 2"),
            Quote(anime: "Anime 3", character: "Character 3", quote: "Random fact 3"),
            Quote(anime: "Anime 4", character: "Character 4", quote: "Random fact 4"),
            Quote(anime: "Anime 5", character: "Character 5", quote: "Random fact 5")
    ]
}
