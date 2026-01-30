//
//  QuizResultView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

struct QuizResultView: View {
    var score: Int
    
    
    
    var body: some View {
        ZStack (alignment: .center) {
            Color(.primaryBlue)
                .ignoresSafeArea()
            
            VStack (spacing: 30) {
                Text("Résultat")
                    .font(.largeTitle)
                    .bold()
                Text("Tu as trouvé \(score) réponses sur")
                Circle()
                Spacer()
                Text("Tu veux approfondir tes connaissances tu peux jetter un coup d'oeil au chapitre")
                
                VStack{
                    
                    // Navigation to WikiDetail
                    
                    NavigationLink {
                        //TODO: Envoyer vers un chapitre du quizz
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
                        // Test
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
    QuizResultView(score: 0)
}
