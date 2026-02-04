//
//  QuizHomeView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

struct QuizHomeView: View {
    
    @EnvironmentObject var progress: QuizProgressStore
    
    var body: some View {
        
        let level1Quizzes = quizzes.filter { $0.level == 1 }
        let level2Quizzes = quizzes.filter { $0.level == 2 }
        let level3Quizzes = quizzes.filter { $0.level == 3 }
        let level4Quizzes = quizzes.filter { $0.level == 4 }
        let level5Quizzes = quizzes.filter { $0.level == 5 }
        
        let level2Locked = !progress.isLevelUnlocked(2, quizzes: quizzes)
        let level3Locked = !progress.isLevelUnlocked(3, quizzes: quizzes)
        let level4Locked = !progress.isLevelUnlocked(4, quizzes: quizzes)
        let level5Locked = !progress.isLevelUnlocked(5, quizzes: quizzes)
        
        NavigationStack {
            
            // =====================
            // Background
            // =====================
            
            ZStack {
                
                Color.primaryBlue
                    .ignoresSafeArea()
                
                VStack {
                    
                    Image("QuizHomeBackgroundImage")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(maxWidth: .infinity)
                        .frame(
                            height: 100,
                            alignment: .top
                        )
                    
                    Spacer()
                    
                }
                
                ScrollView {
                    
                    // =====================
                    // NIVEAU 1
                    // =====================
                    
                    VStack {
                        
                        
                        HStack {
                            
                            VStack(alignment: .leading) {
                                
                                Text("Niveau 1 : ")
                                    .foregroundStyle(Color.secondaryBlue)
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Généralités sur l'Espace")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.light)
                                    .font(.title3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                            }
                            .padding(.leading)
                            
                        }
                        .padding(.top, 55)
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                
                                ForEach(level1Quizzes){ quiz in
                                    QuizCardView(quiz: quiz)
                                        .overlay(alignment: .topTrailing) {
                                            if progress.isCompleted(quiz) {
                                                Image(systemName: "checkmark.circle.fill")
                                                    .foregroundStyle(.green)
                                                    .padding(6)
                                            }
                                            
                                        }
                                }
                            }
                            .padding(.horizontal)
                        } .padding(.bottom, 20)
                        
                    }
                    
                    // =====================
                    // NIVEAU 2 (verrouillé tant que le 4e quiz n'est pas fait)
                    // =====================
                    
                    VStack {
                        
                        HStack {
                            
                            VStack(alignment: .leading) {
                                
                                Text("Niveau 2 : ")
                                    .foregroundStyle(Color.secondaryBlue)
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Observation & exploration")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.light)
                                    .font(.title3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .grayscale(level2Locked ? 1.0 : 0.0)
                                    .opacity(level2Locked ? 0.6 : 1.0)
                                
                            }
                            .padding(.leading)
                            
                            if level2Locked {
                                Image(systemName: "lock")
                                    .padding(.trailing)
                                    .foregroundStyle(Color.gray)
                            }
                            
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(level2Quizzes){ quiz in
                                    QuizCardView(quiz: quiz)
                                        .grayscale(level2Locked ? 1.0 : 0.0)
                                        .opacity(level2Locked ? 0.6 : 1.0)
                                        .allowsHitTesting(!level2Locked)
                                        .overlay(alignment: .topTrailing) {
                                            
                                            if progress.isCompleted(quiz) {
                                                Image(systemName: "checkmark.circle.fill")
                                                    .foregroundStyle(.green)
                                                    .padding(6)
                                            }
                                        }
                                }
                            }
                            .padding(.horizontal)
                        } .padding(.bottom, 20)
                        
                    }
                    
                    // =====================
                    // NIVEAU 3
                    // =====================
                    
                    VStack {
                        
                        HStack {
                            
                            VStack(alignment: .leading) {
                                
                                Text("Niveau 3 : ")
                                    .foregroundStyle(Color.secondaryBlue)
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Astronomie : Étoiles & galaxies")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.light)
                                    .font(.title3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .grayscale(level3Locked ? 1.0 : 0.0)
                                    .opacity(level3Locked ? 0.6 : 1.0)
                                
                            }
                            .padding(.leading)
                            
                            if level3Locked {
                                Image(systemName: "lock")
                                    .padding(.trailing)
                                    .foregroundStyle(Color.gray)
                            }
                            
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(level3Quizzes){ quiz in
                                    QuizCardView(quiz: quiz)
                                        .grayscale(level3Locked ? 1.0 : 0.0)
                                        .opacity(level3Locked ? 0.6 : 1.0)
                                        .allowsHitTesting(!level3Locked)
                                }
                            }
                            
                            .padding(.horizontal)
                        } .padding(.bottom, 20)
                        
                    }
                    
                    // =====================
                    // NIVEAU 4
                    // =====================
                    
                    VStack {
                        
                        HStack {
                            
                            VStack(alignment: .leading) {
                                
                                Text("Niveau 4 : ")
                                    .foregroundStyle(Color.secondaryBlue)
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Cosmologie : Idées clés")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.light)
                                    .font(.title3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .grayscale(level4Locked ? 1.0 : 0.0)
                                    .opacity(level4Locked ? 0.6 : 1.0)
                                
                            }
                            .padding(.leading)
                            
                            if level4Locked {
                                Image(systemName: "lock")
                                    .padding(.trailing)
                                    .foregroundStyle(Color.gray)
                            }
                            
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(level4Quizzes){ quiz in
                                    QuizCardView(quiz: quiz)
                                        .grayscale(level4Locked ? 1.0 : 0.0)
                                        .opacity(level4Locked ? 0.6 : 1.0)
                                        .allowsHitTesting(!level4Locked)
                                }
                            }
                            .padding(.horizontal)
                        } .padding(.bottom, 20)
                        
                    }
                    
                    // =====================
                    // NIVEAU 5
                    // =====================
                    
                    VStack {
                        
                        HStack {
                            
                            VStack(alignment: .leading) {
                                
                                Text("Niveau 5 : ")
                                    .foregroundStyle(Color.secondaryBlue)
                                    .fontWeight(.bold)
                                    .font(.title2)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Frontières : Questions modernes")
                                    .foregroundStyle(Color.white)
                                    .fontWeight(.light)
                                    .font(.title3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .grayscale(level5Locked ? 1.0 : 0.0)
                                    .opacity(level5Locked ? 0.6 : 1.0)
                                
                            }
                            .padding(.leading)
                            
                            if level5Locked {
                                Image(systemName: "lock")
                                    .padding(.trailing)
                                    .foregroundStyle(Color.gray)
                            }
                            
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(level5Quizzes){ quiz in
                                    QuizCardView(quiz: quiz)
                                        .grayscale(level5Locked ? 1.0 : 0.0)
                                        .opacity(level5Locked ? 0.6 : 1.0)
                                        .allowsHitTesting(!level5Locked)
                                }
                            }
                            .padding(.horizontal)
                        } .padding(.bottom, 20)
                        
                    }
                    .navigationTitle("Quiz")
                }
                
            }
            
        }
        
    }
    
}


#Preview {
    QuizHomeView()
        .environmentObject(QuizProgressStore(quizzes: quizzes))
}
