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
    
    // questions
   
    
    // states
    @State private var currentQuestionIndex = 0
    @State private var selectedAnswer: String? = nil
    @State private var isAnswered = false
    @State private var animateCorrect = false
    
    // grid
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        let currentQuestion = questions[currentQuestionIndex]
        let progress = Double(currentQuestionIndex + 1) / Double(questions.count)
        
        ZStack {
            Color.primaryBlue.ignoresSafeArea()
            
            VStack(spacing: 25) {
                
                // progress text
                Text("Question \(currentQuestionIndex + 1) / \(questions.count)")
                    .foregroundColor(.white.opacity(0.8))
                    .font(.headline)
                
                //  progress bar
                ProgressView(value: progress)
                    .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                    .scaleEffect(x: 1, y: 3)
                    .padding(.horizontal)
                    .animation(.easeInOut, value: progress)
                
                //  question
                Text(currentQuestion.questionTitle)
                    .foregroundColor(.white)
                    .font(.title2.bold())
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                //  answers grid
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(currentQuestion.propositions, id: \.self) { answer in
                        
                        Button {
                            selectedAnswer = answer
                            isAnswered = true
                            
                            if answer == currentQuestion.answer {
                                withAnimation(.spring(response: 0.3, dampingFraction: 0.4)) {
                                    animateCorrect.toggle()
                                }
                            }
                        } label: {
                            Text(answer)
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 190, height: 120)
                                .background(buttonColor(for: answer))
                                .cornerRadius(12)
                                .scaleEffect(answer == selectedAnswer ? 1.08 : 1.0) // Bounce
                                .shadow(color: glowColor(for: answer), radius: animateCorrect ? 20 : 0)
                                .animation(.spring(), value: selectedAnswer)
                        }
                        .disabled(isAnswered)
                    }
                }
                
                Spacer()
                
                // navigation
                HStack(spacing: 40) {
                    
                    Button {
                        if currentQuestionIndex > 0 {
                            currentQuestionIndex -= 1
                            resetQuestion()
                        }
                    } label: {
                        navButton(text: "Précédent")
                    }
                    
                    Button {
                        if currentQuestionIndex < questions.count - 1 {
                            currentQuestionIndex += 1
                            resetQuestion()
                        }
                    } label: {
                        navButton(text: "Suivant")
                    }
                }
                .padding(.bottom, 30)
            }
            .padding(.top, 50)
        }
    }
    
    // button colors
    func buttonColor(for answer: String) -> Color {
        guard isAnswered else { return .gradientBlue100 }
        
        if answer == questions[currentQuestionIndex].answer {
            return .green
        }
        if answer == selectedAnswer {
            return .red
        }
        return .gradientBlue100
    }
    
    // glow effect
    func glowColor(for answer: String) -> Color {
        if answer == questions[currentQuestionIndex].answer && isAnswered {
            return .green
        }
        return .clear
    }
    
    // reset
    func resetQuestion() {
        selectedAnswer = nil
        isAnswered = false
        animateCorrect = false
    }
    
    
    //  nav button ui
    func navButton(text: String) -> some View {
        Text(text)
            .foregroundColor(.white)
            .frame(width: 140, height: 40)
            .background(.gradientBlue100)
            .cornerRadius(8)
    }
}

#Preview {
    QuizQuestionView(
        quiz: Quiz(title: "Test", level: 1, theme: "Category", image: .articleWeek, questions: spaceQuestions)
    )
}
