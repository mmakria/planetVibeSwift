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
                            HStack(spacing: 10) {
                                ForEach(quizzes){ quiz in
                                    
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
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        } .padding(.bottom, 20)
                        
                        
                        //                            HStack {
                        //
                        //                                VStack(alignment: .leading) {
                        //
                        //                                    Text("Niveau 2")
                        //                                        .foregroundStyle(Color.gray)
                        //                                        .fontWeight(.bold)
                        //                                        .font(.title2)
                        //                                        .frame(maxWidth: .infinity, alignment: .leading)
                        //
                        //                                    Text("Termine les quizz du niveau 1.")
                        //                                        .foregroundStyle(Color.gray)
                        //                                        .fontWeight(.light)
                        //                                        .font(.title3)
                        //                                        .frame(maxWidth: .infinity, alignment: .leading)
                        //
                        //                                }
                        //                                .padding(.leading)
                        //
                        //                                Image(systemName: "lock")
                        //                                    .padding()
                        //                                    .foregroundStyle(Color.gray)
                        //                            }
                        //
                        //                            NavigationLink {
                        //                                QuizQuestionView()
                        //
                        //                            } label: {
                        //
                        //                                VStack {
                        //
                        //
                        //                                    ScrollView(.horizontal, showsIndicators: false) {
                        //
                        //                                        HStack(spacing: 10) {
                        //
                        //                                            ForEach(quizzes){ quiz in
                        //
                        //                                                VStack {
                        //
                        //                                                    ZStack {
                        //
                        //                                                        RoundedRectangle(cornerRadius: 10)
                        //                                                            .foregroundStyle(Color.gray)
                        //                                                            .frame(width: 100, height: 100)
                        //                                                        Image(quiz.image)
                        //                                                            .frame(width: 50, height: 50)
                        //                                                            .padding(3)
                        //                                                            .grayscale(0.99)
                        //
                        //                                                    }
                        //                                                    Text(quiz.title)
                        //                                                        .foregroundStyle(Color.gray)
                        //                                                        .fontWeight(.light)
                        //
                        //                                                }
                        //
                        //                                            }
                        //
                        //                                        }
                        //                                        .padding()
                        //                                    }
                        //
                        //                                }
                        //
                        //                            } .padding(.bottom, 20)
                        //
                        //                            HStack {
                        //
                        //                                VStack(alignment: .leading) {
                        //
                        //                                    Text("Niveau 3")
                        //                                        .foregroundStyle(Color.gray)
                        //                                        .fontWeight(.bold)
                        //                                        .font(.title2)
                        //                                        .frame(maxWidth: .infinity, alignment: .leading)
                        //
                        //                                    Text("Termine les quizz du niveau 2.")
                        //                                        .foregroundStyle(Color.gray)
                        //                                        .fontWeight(.light)
                        //                                        .font(.title3)
                        //                                        .frame(maxWidth: .infinity, alignment: .leading)
                        //
                        //                                }
                        //                                .padding(.leading)
                        //
                        //                                Image(systemName: "lock")
                        //                                    .padding()
                        //                                    .foregroundStyle(Color.gray)
                        //                            }
                        //
                        //                            NavigationLink {
                        //                                QuizQuestionView()
                        //
                        //                            } label: {
                        //
                        //                                VStack {
                        //
                        //
                        //                                    ScrollView(.horizontal, showsIndicators: false) {
                        //
                        //                                        HStack(spacing: 10) {
                        //
                        //                                            ForEach(quizzes){ quiz in
                        //
                        //                                                VStack {
                        //
                        //                                                    ZStack {
                        //
                        //                                                        RoundedRectangle(cornerRadius: 10)
                        //                                                            .foregroundStyle(Color.gray)
                        //                                                            .frame(width: 100, height: 100)
                        //                                                        Image(quiz.image)
                        //                                                            .frame(width: 50, height: 50)
                        //                                                            .padding(3)
                        //                                                            .grayscale(0.99)
                        //
                        //                                                    }
                        //                                                    Text(quiz.title)
                        //                                                        .foregroundStyle(Color.gray)
                        //                                                        .fontWeight(.light)
                        //
                        //                                                }
                        //
                        //                                            }
                        //
                        //                                        }
                        //                                        .padding()
                        //                                    }
                        //
                        //                                }
                        //
                        //                            } .padding(.bottom, 20)
                        
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
