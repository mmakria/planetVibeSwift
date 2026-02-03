//
//  WeeklyArticleView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 03/02/2026.
//

import SwiftUI

struct WeeklyArticleView: View {
    let article = weeklyArticle

    var body: some View {
        ZStack {
            Color(.primaryBlue)
                .ignoresSafeArea()

            ScrollView(.vertical, showsIndicators: false) {

                VStack(alignment: .leading, spacing: 0) {

                    // MARK: - Hero Image
                    ZStack(alignment: .bottomLeading) {
                        Image(.articleWeek)
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

                        // Title + subtitle
                        VStack(alignment: .leading, spacing: 4) {
                            Text(article.subtitle.uppercased())
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

                    // MARK: - Date
                    Text(article.date)
                        .font(.caption)
                        .foregroundStyle(.white.opacity(0.7))
                        .padding(.horizontal)
                        .padding(.top, 16)

                    // MARK: - Introduction
                    Text(article.introduction)
                        .foregroundStyle(.white.opacity(0.85))
                        .padding(.horizontal)
                        .padding(.top, 12)

                    // MARK: - Photos Gallery
                    ForEach(article.photos) { photo in
                        PhotoCardView(photo: photo)
                            .padding(.horizontal)
                            .padding(.top, 24)
                    }

                    Spacer()
                        .frame(height: 40)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Photo Card View

struct PhotoCardView: View {
    let photo: SpacePhoto

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(photo.image)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .frame(height: 180)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            Text(photo.title)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.white)

            Text(photo.description)
                .font(.subheadline)
                .foregroundStyle(.white.opacity(0.85))
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [.gradientBlue100, .gradientBlue200]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

#Preview {
    NavigationStack {
        WeeklyArticleView()
    }
}
