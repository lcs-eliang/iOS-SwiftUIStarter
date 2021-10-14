//
//  QuotesScreen.swift
//  SwiftUI Starter
//
//  Created by Emily Liang on 2021/10/7.
//

import SwiftUI

struct QuotesScreen: View {
    
    var body: some View {
        
        List {
            ForEach(Quote.dummyData, id: \.anime) { item in
                VStack(alignment: .leading,
                       spacing: 8) {
                    HStack {
                        Image(systemName: "tv")
                            .font(.system(size: 12, weight: .black))
                        Text(item.anime)
                    }
                    
                    Text(makeAttributedString(title:"Character", label: item.character))
                    Text(makeAttributedString(title:"Quotes", label: item.quote))
                        .lineLimit(2)
                }
                .padding()
                .foregroundColor(.black)
            }
        }
    }
    
    private func makeAttributedString(title: String, label: String) -> AttributedString
        {
        
        var string = AttributedString("\(title): \(label)")
        string.foregroundColor = .black
        string.font = .system(size: 16, weight: .bold)
        
        if let range = string.range(of: label) {
            string[range].foregroundColor = .black.opacity(0.8)
            string[range].font = .system(size: 16, weight = .regular)
            
        }
        return string
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
