//
//  WikiDetailView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

struct WikiDetailView: View {
    var article: Article
    
    var body: some View {
        ZStack{
            Color(.primaryBlue)
                .ignoresSafeArea()
            VStack{
                Image(article.image)
                Text(article.title)
                Text(article.description)
                Text(article.category)
                Text(article.author)
                    
            }
            .foregroundStyle(.white)

        }
      
    }
}

#Preview {
    WikiDetailView(
        article: Article(
            title: "Terre",
            description: "La Terre est la troisième planète du système solaire et la seule connue pour abriter la vie.",
            category: "Système solaire",
            date: "28/12/2026",
            author: "Thomas GrosJEAN",
            image: .earth
        )
    )
}


