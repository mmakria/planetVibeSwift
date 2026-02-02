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

    var body: some View {
        ZStack (alignment: .center) {
            Color(.primaryBlue)
                .ignoresSafeArea()
            
            VStack (spacing: 30) {
                Text("Résultat")
                    .font(.largeTitle)
                    .bold()
                HStack{
                    Text("Tu as trouvé")
                        .font(.title2)
                    Text("\(score)/5")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.yellow)
                    Text("réponses correctes !")
                        .font(.title3)
                }
                
                Image(.comic)
                    .resizable()
                    .scaledToFit()
                
                Text("Tu veux approfondir tes connaissances tu peux jetter un coup d'oeil au chapitre")
                
                VStack{
                    
                    // Navigation to WikiDetail
                    
                    NavigationLink {
                        if let article = articles.first(where: { $0.image == quiz.image }) {
                            WikiDetailView(article: article)
                        }
                    } label: {
                        Text("Revoir le chapitre")
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .frame(minWidth: 300)
                            .background(.gradientBlue200)
                            .cornerRadius(8)
                    }
                    
                    // Navigation to HomeQuiz
                    Button {
                        progress.markCompleted(quiz)
                        returnToHome = true
                        dismiss()
                    } label: {
                        Text("Retourner à l'accueil Quiz")
                            .foregroundColor(.gradientBlue200)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 12)
                            .frame(minWidth: 300)
                            .background(.white)
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
        }
    }
}



#Preview {
    NavigationStack {
        QuizResultView(score: 3, quiz: quizzes[0], returnToHome: .constant(false))
            .environmentObject(QuizProgressStore(quizzes: quizzes))
    }
}
