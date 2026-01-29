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
            VStack {
                Image(article.image)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 10)
                Text(article.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                // Date and Place
                HStack(spacing: 15) {
                    Label(article.date, systemImage: "calendar")
                    Label(article.author, systemImage: "person.fill")
                }
                
                Text(article.description)
              
       
                Spacer()
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


