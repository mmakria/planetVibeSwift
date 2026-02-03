//
//  WikiHomeView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

struct WikiHomeView: View {
    @State var searchText: String = ""
    var isSearching: Bool {
        !searchText.isEmpty
    }
    
    var searchResults: [Article] {
        if searchText.isEmpty {
            return articles
        } else {
            return articles.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        
        NavigationStack{
            
            ZStack(alignment: .top) {
                Color(.primaryBlue)
                    .ignoresSafeArea()
                
                
                // Vstack principale
                ScrollView(.vertical){
                    VStack{
                        
                        // ------------ Article du jour ---------------
                        NavigationLink {
                            WeeklyArticleView()
                        } label: {
                            VStack(alignment: .leading) {
                                Text("Article du jour")
                                    .font(.title2)
                                    .bold()

                                Image(.articleWeek)

                                Text("Les plus belles photos de l'espace prises par la Nasa")
                                    .font(.subheadline)
                                    .bold()
                                Text("24 janvier 2026")
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                            .padding()
                            .background(LinearGradient(
                                gradient: Gradient(colors: [.gradientBlue100, .gradientBlue200]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            ))
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .padding()
                        }
                        
                        // ------------- Solar System Section ---------------
                        VStack (alignment: .leading) {
                            Text("Système solaire")
                                .font(.title2)
                                .bold()
                                .padding(.leading)
                            
                            
                            // Carroussel
                            ScrollView(.horizontal) {
                                HStack{
                                    // Article components
                                    ForEach(articles){article in
                                        if article.category == "Système solaire"{
                                            WikiCardView(article: article)
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                        
                        // -------------- Satellite section -----------------
                        VStack (alignment: .leading) {
                            Text("Satellite")
                                .font(.title2)
                                .bold()
                                .padding(.leading)
                            
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
                                .padding()
                            }
                        }
                        
                        //  --------------- Events section ------------
                        VStack(spacing: 12) {
                            Text("Evenements")
                                .bold()
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
                
                
                // SearchBar
                VStack(alignment: .leading, spacing: 12){
                    if isSearching {
                        ForEach(searchResults) { article in
                            NavigationLink {
                                WikiDetailView(article: article)
                            } label: {
                                Text(article.title)
                                    .padding()
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                .background(.gray.opacity(0.9) )
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal)

                // End searchBar
                
                
            
                
            }
            .foregroundStyle(.white)
            .animation(.linear, value: searchResults)
        }
        .searchable(text: $searchText)
        .toolbarBackground(.hidden, for: .navigationBar)
        
    }
}





#Preview {
    WikiHomeView()
}
