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
        ZStack {
           
           Color(.primaryBlue)
            .ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {

                VStack(alignment: .leading, spacing: 0) {

                    // MARK: - Hero Image
                    ZStack(alignment: .bottomLeading) {
                        Image(article.imageFull ?? article.image)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity, maxHeight: 250)

                        // Gradient overlay
                        LinearGradient(
                            colors: [.clear, Color(.primaryBlue)],
                            startPoint: .top,
                            endPoint: .bottom
                        )

                        // Title + category
                        VStack(alignment: .leading, spacing: 4) {
                            
                            // Category
                            Text(article.category.uppercased())
                                .padding(.horizontal, 12)
                                .padding(.vertical, 4)
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .background(.secondaryBlue.opacity(0.7))
                                .cornerRadius(999)
                            // Title
                            
                            
                            Text(article.title)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 12)
                    }
                    .clipShape(
                        UnevenRoundedRectangle(
                            bottomLeadingRadius: 24,
                            bottomTrailingRadius: 24
                        )
                    )
                    // 140 % - 150 %+ Opacity + mots important une graisse au dessus et blanc
                    // degradé HSL 5 points sur le L
                    // Une bar
                    // plus un texte est petit plus d'interlignage
                    // plus un texte est grand moins d'interlignage - 110 % par exemple
                    // leffet vonrestorff pricing (ux)
                    // Ca monte ou ca va droite -> vers l'avenir, mettre en avant
                    // structure en Z -> deux call to action converti un peu mieu
                    // structure en T -> titre
                    // au scroll bouton apparait en bas avec les actiopns
                    // QUOI , quelle page ? Pourquoi faire de tell ou tell manière ?
                    // variables figma
                    // naming token figma
                    
                    // MARK: - Key Facts
                    if !article.keyFacts.isEmpty {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 12) {
                                ForEach(article.keyFacts) { fact in
                                    KeyFactCard(fact: fact)
                                }
                            }
                            .padding(.horizontal)
                        }
                        .padding(.top, 20)
                    }

                    // MARK: - Sections
                    ForEach(article.sections) { section in
                        VStack(alignment: .leading, spacing: 10) {
                            
                            HStack(alignment: .center, spacing: 12) {
                                
                                Rectangle()
                                    .fill(.secondaryBlue.opacity(0.85))
                                    .frame(width: 2.5)
                                    .cornerRadius(2)
                                Text(section.title)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                            }
                            if let sectionImage = section.image {
                                Image(sectionImage)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 180)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            }

                            Text(section.content)
                                .font(.system(size: 17))

                                .foregroundStyle(.white.opacity(0.80))
                                .lineSpacing(7)
                        }
                        .padding(.horizontal)
                        .padding(.top, 24)
                    }

                    // MARK: - Fun Fact
                    FunFactCard(text: article.funFact)
                        .padding(.horizontal)
                        .padding(.top, 24)
                        .padding(.bottom, 40)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Key Fact Card

private struct KeyFactCard: View {
    let fact: KeyFact

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: fact.icon)
                .font(.title2)
                .foregroundStyle(Color(.secondaryBlue))

            Text(fact.value)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundStyle(.white)

            Text(fact.label)
                .font(.caption)
                .foregroundStyle(.white.opacity(0.7))
        }
        .frame(width: 130, height: 120)
        .background(Color(.secondaryBlue).opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

// MARK: - Fun Fact Card

private struct FunFactCard: View {
    let text: String

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: "lightbulb.fill")
                .font(.title2)
                .foregroundStyle(Color(.bulbcolor))

            VStack(alignment: .leading, spacing: 4) {
                Text("Le savais-tu ?")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

                Text(text)
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.9))
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.purpleCard))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

// MARK: - Preview

#Preview {
    NavigationStack {
        WikiDetailView(article: articles[0])
    }
}
