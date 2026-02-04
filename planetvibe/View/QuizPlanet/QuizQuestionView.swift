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
    @State private var selectedAnswers: [Int: Int] = [:]
    @State private var score: Int = 0
    @State private var showResult = false
    @State private var returnToHome = false
    @State private var showHint = false 
    
    @Environment(\.dismiss) private var dismiss
    
    let columns = [
        GridItem(.flexible(), spacing: 0.5),
        GridItem(.flexible(), spacing: 0.5)
    ]
    
    var body: some View {
        
        let question = questions[currentQuestionIndex]
        
        ZStack {
            Color.primaryBlue.ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                Text("Question \(currentQuestionIndex + 1) / \(questions.count)")
                    .foregroundColor(.white.opacity(0.9))
                    .font(.headline)
                
                ZStack {
                    Image("skyNew")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    Image(question.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 110)
                        .padding(.top, 80)
                }
                
                Text(question.questionTitle)
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(question.propositions.indices, id: \.self) { index in
                        let answer = question.propositions[index]
                        
                        Button {
                            selectAnswer(index)
                        } label: {
                            Text(answer)
                                .font(.system(size: 16, weight: .regular))
                                .foregroundColor(.white)
                                .frame(width: 170, height: 100)
                                .background(buttonColor(index: index))
                                .cornerRadius(12)
                        }
                        .disabled(selectedAnswers[currentQuestionIndex] != nil)
                    }
                }
                
                Spacer()
                
                HStack(spacing: 5) {
                    
                    // Stable layout like V2
                    if currentQuestionIndex > 0 {
                        Button {
                            currentQuestionIndex -= 1
                        } label: {
                            navButton("Précédent")
                        }
                    } else {
                        navButton("Précédent").opacity(0)
                    }
                    
                    // 💡 Hint button (interactive)
                    Button {
                        showHint = true
                    } label: {
                        Image(systemName: "lightbulb.circle.fill")
                            .font(.system(size: 45, weight: .semibold))
                            .foregroundColor(.bulbcolor)
                    }
                    
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
            .navigationDestination(isPresented: $showResult) {
                QuizResultView(score: score, quiz: quiz, returnToHome: $returnToHome)
            }
            .onChange(of: returnToHome) {
                if returnToHome {
                    dismiss()
                }
            }
            
            // ✅ HINT POPUP (from V1)
            if showHint {
                ZStack {
                    Color.black.opacity(0.35)
                        .ignoresSafeArea()
                        .onTapGesture { showHint = false }
                    
                    VStack(spacing: 16) {
                        Image(systemName: "lightbulb.fill")
                            .font(.system(size: 36))
                            .foregroundStyle(.yellow)
                            .padding(.top, 10)
                        
                        Text("Indice")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(question.hint)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                        
                        Button {
                            showHint = false
                        } label: {
                            Text("Compris")
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 44)
                                .background(Color.blue)
                                .cornerRadius(12)
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    }
                    .padding()
                    .frame(maxWidth: 320)
                    .background(
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.ultraThinMaterial)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 24)
                            .stroke(Color.white.opacity(0.2), lineWidth: 1)
                    )
                    .shadow(color: .black.opacity(0.25), radius: 20, x: 0, y: 10)
                }
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
    
    func selectAnswer(_ index: Int) {
        guard selectedAnswers[currentQuestionIndex] == nil else { return }
        selectedAnswers[currentQuestionIndex] = index
        
        let question = questions[currentQuestionIndex]
        let correctIndex = question.propositions.firstIndex(of: question.answer)
        
        if index == correctIndex {
            score += 1
        }
    }
    
    func buttonColor(index: Int) -> Color {
        guard selectedAnswers[currentQuestionIndex] != nil else {
            return .gradientBlue100
        }
        
        let question = questions[currentQuestionIndex]
        let correctIndex = question.propositions.firstIndex(of: question.answer)
        
        return index == correctIndex ? .greenPlanet : .redPlanet
    }
    
    func navButton(_ text: String) -> some View {
        Text(text)
            .foregroundColor(.white)
            .frame(width: 140, height: 40)
            .background(text == "Suivant" ? Color.gradientBlue400 : Color.gradientBlue300.opacity(0.5))
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
                    propositions: ["Mercure", "Vénus", "Terre", "Mars"],
                    hint: "Cherche la planète la plus petite et la plus rapide 🌞"
                )
            ]
        )
    )
}
