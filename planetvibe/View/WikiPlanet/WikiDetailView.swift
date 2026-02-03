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
                        .frame(height: 120)

                        // Title + category
                        VStack(alignment: .leading, spacing: 4) {
                            Text(article.category.uppercased())
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(.secondaryBlue))

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
                            Text(section.title)
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)

                            if let sectionImage = section.image {
                                Image(sectionImage)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 180)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                            }

                            Text(section.content)
                                .foregroundStyle(.white.opacity(0.85))
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
        .frame(width: 120, height: 110)
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
