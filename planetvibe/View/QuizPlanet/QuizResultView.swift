//
//  QuizResultView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

struct QuizResultView: View {
    var score: Int
    var quiz: Quiz
    @Binding var returnToHome: Bool
    @EnvironmentObject var progress: QuizProgressStore
    @Environment(\.dismiss) private var dismiss

    // MARK: - Computed Properties

    private var resultTitle: String {
        switch score {
        case 0...3: return "Continue !"
        case 4...6: return "Bien joué !"
        case 7...8: return "Super !"
        default: return "Bravo !"
        }
    }

    private var resultMessage: String {
        switch score {
        case 0...3: return "Pas de panique, l'espace est vaste et il y a tant à apprendre !"
        case 4...6: return "Tu es sur la bonne voie ! Continue d'explorer l'univers."
        case 7...8: return "Excellente performance ! Tu maîtrises bien ce sujet."
        default: return "Tu es un vrai expert de l'espace ! Impressionnant !"
        }
    }

    private var resultEmoji: String {
        switch score {
        case 0...3: return "🚀"
        case 4...6: return "⭐️"
        case 7...8: return "🌟"
        default: return "🏆"
        }
    }

    private var scoreColor: Color {
        switch score {
        case 0...3: return .orange
        case 4...6: return .yellow
        case 7...8: return .green
        default: return .yellow
        }
    }

    var body: some View {
        ZStack {
            Color.primaryBlue
                .ignoresSafeArea()

            VStack(spacing: 0) {

                Spacer()

                // MARK: - Title
                Text(resultTitle)
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.bottom, 32)

                // MARK: - Score Circle
                ZStack {
                    Circle()
                        .stroke(Color.white.opacity(0.2), lineWidth: 12)
                        .frame(width: 180, height: 180)

                    Circle()
                        .trim(from: 0, to: CGFloat(score) / 10.0)
                        .stroke(scoreColor, style: StrokeStyle(lineWidth: 12, lineCap: .round))
                        .frame(width: 180, height: 180)
                        .rotationEffect(.degrees(-90))

                    VStack(spacing: 4) {
                        Text(resultEmoji)
                            .font(.system(size: 40))
                        Text("\(score)/10")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                    }
                }
                .padding(.bottom, 32)
             


                // MARK: - Message
                Text(resultMessage)
                    .font(.body)
                    .foregroundColor(.white.opacity(0.9))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)

                Spacer()
             

                // MARK: - Actions
                VStack(spacing: 16) {
                    Text("Envie d'en savoir plus ?")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.8))

                    NavigationLink {
                        if let article = articles.first(where: { $0.image == quiz.image }) {
                            WikiDetailView(article: article)
                        }
                    } label: {
                        HStack(spacing: 8) {
                            Image(systemName: "book.fill")
                            Text("Approfondir mes connaissances")
                        }
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.gradientBlue200)
                        .cornerRadius(12)
                    }

                    Button {
                        progress.markCompleted(quiz)
                        returnToHome = true
                        dismiss()
                    } label: {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.right.circle.fill")
                            Text("Découvrir le niveau suivant")
                        }
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.gradientBlue200)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.white)
                        .cornerRadius(12)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 40)
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}



#Preview {
    NavigationStack {
        QuizResultView(score: 9, quiz: quizzes[0], returnToHome: .constant(false))
            .environmentObject(QuizProgressStore(quizzes: quizzes))
    }
}
