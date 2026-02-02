//
//  ProfileView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        NavigationStack{
            VStack{
                
                VStack (spacing:12 ) {
                    Image (systemName: "person.crop.circle.fill")
                        .resizable()
                        .frame(width: 99, height: 99)
                        .foregroundColor(.blue)
                    Text("prenom et nom")
                        .font(.title2)
                        .bold()
                    Text ("prenom et nom")
                        .foregroundColor(.secondary)
                    Button("Modifier le profil") {
                        
                        
                    }
                    HStack{
                        ZStack{
                            Rectangle()
                                .fill(Color .brown)
                                .frame(width: 150,height: 150)
                            
                            VStack {
                                Text("5 ")
                                Text("QUIZ")
                                VStack{
                                    Text("FAIS")
                                }
                            }
                            
                            
                        }
                        ZStack{
                            Rectangle()
                                .fill(Color .brown)
                                .frame(width: 150,height: 150 )
                            VStack {
                                Text("96%")
                                Text("bonnes")
                                VStack{
                                    Text("REPONSES")
                                }
                            }
                            
                            
                        }
                        
                    }
                    ZStack{
                        Rectangle()
                            .fill(Color .brown)
                            .frame(width: 150, height: 150)
                        VStack{
                            Text("3")
                            Text("Quiz PAR SEMAINE" )
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .listRowBackground(Color.clear)
            
            // info
            Section("Informations") {
                Label ("jeanemail.com" , systemImage: "bell")
                Label("confidentialité", systemImage:"lock")
                Label("mode sombre" , systemImage:"moon")
            }
            Spacer()
        }
        
    }
}


#Preview {
    ProfileView()
}
