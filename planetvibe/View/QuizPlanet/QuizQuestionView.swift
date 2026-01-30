//
//  QuizQuestionView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

struct QuizQuestionView: View {
    
    let quiz: Quiz
    var questions: [Question] { quiz.questions }
    
    @State var score: Int = 0
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswerIndex: Int? = nil
    
    // Grid layout
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        let question = questions[currentQuestionIndex]
        let progress = Double(currentQuestionIndex + 1) / Double(questions.count)
        
        ZStack {
            Color.primaryBlue.ignoresSafeArea()
            
            VStack(spacing: 25) {
                
                // Progress text
                Text("Question \(currentQuestionIndex + 1) / \(questions.count)")
                    .foregroundColor(.white.opacity(0.8))
                    .font(.headline)
                
                // Progress bar
                ProgressView(value: progress)
                    .tint(.blue)
                    .scaleEffect(x: 1, y: 3)
                    .padding(.horizontal)
                
                // Question image
                Image(question.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .shadow(radius: 10)
                    .padding(.horizontal)
                
                // Question text
                Text(question.questionTitle)
                    .foregroundColor(.white)
                    .font(.title2.bold())
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Answers grid
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(question.propositions.indices, id: \.self) { index in
                        let answer = question.propositions[index]
                        
                        Button {
                            // Only allow selection once
                            if selectedAnswerIndex == nil {
                                selectedAnswerIndex = index
                            }
                        } label: {
                            Text(answer)
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 190, height: 120)
                                .background(buttonColor(index: index))
                                .cornerRadius(12)
                                .scaleEffect(selectedAnswerIndex == index ? 1.05 : 1)
                        }
                        
                    }
                }
                
                Spacer()
                
                // Navigation buttons
                HStack(spacing: 40) {
                    Button {
                        if currentQuestionIndex > 0 {
                            currentQuestionIndex -= 1
                            selectedAnswerIndex = nil
                        }
                    } label: {
                        navButton("Précédent")
                    }
                    
                    Button {
                        if currentQuestionIndex < questions.count - 1 {
                            currentQuestionIndex += 1
                            selectedAnswerIndex = nil
                        }
                    } label: {
                        navButton("Suivant")
                    }
                }
                .padding(.bottom, 30)
            }
            .padding(.top, 50)
        }
    }
    
    // Determine button color
    func buttonColor(index: Int) -> Color {
        guard let selected = selectedAnswerIndex else {
            return .gradientBlue100
        }
        
        let question = questions[currentQuestionIndex]
        let correctIndex = question.propositions.firstIndex(of: question.answer)
        
        // Only color the selected answer
        if index == selected {
            /* if score == correctIndex {
             score += 1
             } */
            
            return index == correctIndex ? .green : .red
        }
        
        // Keep unselected answers neutral
        return .gradientBlue100
    }
    
    // Navigation button style
    func navButton(_ text: String) -> some View {
        Text(text)
            .foregroundColor(.white)
            .frame(width: 140, height: 40)
            .background(.gradientBlue100)
            .cornerRadius(8)
    }
}

#Preview {
    QuizQuestionView(
        quiz: Quiz(
            title: "Planètes telluriques",
            level: 1,
            theme: "Système solaire — Bases",
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
