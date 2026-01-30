//
//  QuizHomeView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

struct QuizHomeView: View {
    
    
    var body: some View {
        
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
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(quizzes){ quiz in
                                    
                                    if quiz.level == 1 {
                                        QuizCardView(quiz: quiz)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        } .padding(.bottom, 20)
                        
                    }
                    
                    // =====================
                    // NIVEAU 2
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
                                
                            }
                            .padding(.leading)
                            
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(quizzes){ quiz in
                                    
                                    if quiz.level == 2 {
                                        QuizCardView(quiz: quiz)
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
                                
                            }
                            .padding(.leading)
                            
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(quizzes){ quiz in
                                    
                                    if quiz.level == 3 {
                                        QuizCardView(quiz: quiz)
                                    }
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
                                
                            }
                            .padding(.leading)
                            
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(quizzes){ quiz in
                                    
                                    if quiz.level == 4 {
                                        QuizCardView(quiz: quiz)
                                    }
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
                                
                            }
                            .padding(.leading)
                            
                        }
                        
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(quizzes){ quiz in
                                    
                                    if quiz.level == 5 {
                                        QuizCardView(quiz: quiz)
                                    }
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
}


