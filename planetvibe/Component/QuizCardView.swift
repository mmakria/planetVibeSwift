//
//  QuizCardView.swift
//  planetvibe
//
//  Created by apprenant82 on 30/01/2026.
//


import SwiftUI

struct QuizCardView: View {
    
    var quiz: Quiz
    
    var body: some View {
        NavigationLink {
            QuizQuestionView(quiz: quiz)
            
        } label: {
            
            VStack {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.secondaryBlue)
                        .frame(width: 100, height: 100)
                    Image(quiz.image)
                        .frame(width: 50, height: 50)
                        .padding(3)
                    
                }
                Text(quiz.title)
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .frame(width: 100, height: 70)
            }
        }
    }
}

#Preview {
    QuizCardView(
        quiz: Quiz(
            title: "Planètes telluriques",
            level: 1,
            theme: "Système solaire - Bases",
            image: .mars,
            questions: [
                Question(
                    questionTitle: "Quelle est la planète la plus proche du Soleil ?",
                    answer: "Mercure",
                    image: .mercury,
                    propositions: ["Mercure", "Vénus", "Terre", "Mars"]
                ),
            ]
        )
    )
}
