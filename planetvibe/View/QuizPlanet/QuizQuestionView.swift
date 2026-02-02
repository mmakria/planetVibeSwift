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
    
    @State private var currentQuestionIndex = 0
    
    // Store selected answers for each question
    @State private var selectedAnswers: [Int: Int] = [:]
    
    // Score
    @State private var score: Int = 0
    @State private var showResult = false
    
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
                
                /* Image("skyplanet")
                 .resizable()
                 .scaledToFill()
                 .frame(height: 00)
                 .ignoresSafeArea(edges: .top) */
                
                
                // Progress text
                Text("Question \(currentQuestionIndex + 1) / \(questions.count)")
                    .foregroundColor(.white.opacity(0.9))
                    .font(.headline)
                
                
                // Progress bar
                ProgressView(value: progress)
                    .tint(.secondaryBlue)
                    .scaleEffect(x: 1, y: 3)
                    .padding(.horizontal)
                
                // Question image
                Image(question.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                //.clipShape(RoundedRectangle(cornerRadius: 16))
                //.shadow(radius: 10)
                //.padding(.horizontal)
                
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
                            selectAnswer(index)
                        } label: {
                            Text(answer)
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 190, height: 120)
                                .background(buttonColor(index: index))
                                .cornerRadius(12)
                                .scaleEffect(selectedAnswers[currentQuestionIndex] == index ? 1.05 : 1)
                        }
                        .disabled(selectedAnswers[currentQuestionIndex] != nil) // lock after answer
                    }
                }
                
                Spacer()
                
                // Score display
                Text("Score: \(score) / \(questions.count)")
                    .foregroundColor(.white)
                    .font(.headline)
                
                // Navigation buttons
                HStack(spacing: 5) {
                    Button {
                        if currentQuestionIndex > 0 {
                            currentQuestionIndex -= 1
                        }
                    } label: {
                        navButton("Précédent")
                    }
                    Image(systemName: "lightbulb.circle.fill")
                        .font(.system(size: 45, weight: .semibold))
                        .foregroundColor(.bulbcolor)
                    
                    
                    Button {
                        if currentQuestionIndex < questions.count - 1 {
                            currentQuestionIndex += 1
                        } else {
                            showResult = true
                        }
                    } label: {
                        navButton("Suivant")
                    }
                }
                .padding(.bottom, 30)
            }
            .padding(.top, 50)
            .navigationDestination(isPresented: $showResult) {
                QuizResultView(score: score, quiz: quiz)
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
        
    
    // selected answer and score
    func selectAnswer(_ index: Int) {
        guard selectedAnswers[currentQuestionIndex] == nil else { return }
        
        selectedAnswers[currentQuestionIndex] = index
        
        let question = questions[currentQuestionIndex]
        let correctIndex = question.propositions.firstIndex(of: question.answer)
        
        if index == correctIndex {
            score += 1
        }
    }
    
    // button color logic
    func buttonColor(index: Int) -> Color {
        guard let selected = selectedAnswers[currentQuestionIndex] else {
            return .gradientBlue100
        }
        
        let question = questions[currentQuestionIndex]
        let correctIndex = question.propositions.firstIndex(of: question.answer)
        
        if index == selected {
            return index == correctIndex ? .green : .red
        }
        
        return .gradientBlue100
    }
    
    // Navigation button
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
