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
                ScrollView(.vertical){
                    // Image
                    Image(article.image)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 10)
                    // Titre
                    Text(article.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    // Date and Place
                    HStack(spacing: 15) {
                        Label(article.date, systemImage: "calendar")
                        Label(article.author, systemImage: "person.fill")
                    }
                    .font(.footnote)
                    VStack (alignment: .leading) {
                        
                        
                        Text(article.description)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding()
                            .font(.caption)
                        // Article Section
                        ForEach(article.sections){ section in
                            Text("\(section.title)")
                                .font(.title2)
                                .bold()
                                .padding(.vertical)
                            Text("\(section.content)")
                        }
                        
                        .foregroundStyle(.white)
                        
                        
                    }}
                .padding()
                
                
                
            }
            
            
            
            
            
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
            image: .earth,
            sections: [
                ArticleSection(
                    title: "Position dans le système solaire",
                    content: "La Terre orbite autour du Soleil en environ 365 jours. Elle se situe dans la zone habitable, une région où les températures permettent la présence d’eau liquide."
                ),
                ArticleSection(
                    title: "Atmosphère et climat",
                    content: "L’atmosphère terrestre est composée majoritairement d’azote et d’oxygène. Elle protège la surface des radiations solaires et régule la température grâce à l’effet de serre naturel."
                ),
                ArticleSection(
                    title: "Vie sur Terre",
                    content: "La Terre est la seule planète connue abritant la vie. Des millions d’espèces vivent dans des environnements variés, des océans profonds aux montagnes enneigées."
                )
            ]
            
        )
    )
}



