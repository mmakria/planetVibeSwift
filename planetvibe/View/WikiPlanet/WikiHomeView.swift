//
//  WikiHomeView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

struct WikiHomeView: View {
    @State var searchText: String = ""
    var article: Article
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Color(.primaryBlue)
                    .ignoresSafeArea()
                
                // Vstazck principale
                ScrollView(.vertical){
                    VStack{
                        
                        // SearchBar
                        TextField("Rechercher...", text: $searchText)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                        
                        // Article of the week
                        VStack (alignment: .leading) {
                            Text("Article de la semaine")
                                .font(.title2)
                            Image(.articleWeek)
                            Text("Les plus belles photos de l'espace prises par la Nasa")
                            Text("24 janvier 2026")
                        }
                        .padding()
                        .background(LinearGradient(
                            gradient: Gradient(colors: [.gradientBlue100, .gradientBlue200]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ))
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        .padding()
                        
                        
                        // Solar System events
                        VStack {
                            Text("Système solaire")
                                .font(.title2)
                            
                            // Carroussel
                            ScrollView(.horizontal) {
                                HStack{
                                    // Article components
                                    ForEach(articles){article in
                                        if article.category == "Système solaire"{
                                            WikiCardView(article: article)
                                        }
                                    }}
                            }
                        }
                        
                        // Satellite section
                        VStack {
                            Text("Satellite")
                                .font(.title2)
                            // Carroussel
                            ScrollView(.horizontal) {
                                
                                HStack{
                                    // Card Individuelle
                                    ForEach(articles){ article in
                                        if article.category == "Satellite"{
                                            WikiCardView(article: article)
                                        }
                                    }
                                }
                            }
                        }
                        
                        // Events section
                        VStack(spacing: 12) {
                            Text("Evenements")
                                .font(.title2)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            // Event components
                            ForEach(events){event in
                                EventCardView(event: event)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .foregroundStyle(.white)
        }
    }
}





#Preview {
    WikiHomeView(article: Article(title: "Mars", description: "Description", category: "Solar System", date: "28/12/2025", author: "Thomas", image: .mars))
}
