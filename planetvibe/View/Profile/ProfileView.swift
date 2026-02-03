import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color(.primaryBlue)
                    .ignoresSafeArea()
                
                VStack{
                    
                    VStack (spacing:12 ) {
                        Image (.pandora)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 99, height: 99)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                        
                        Text("prenom et nom")
                            .font(.title2)
                            .bold()
                        Text ("prenom et nom")
                            .foregroundColor(.white)
                        Button("Modifier le profil")
                        {
                            
                            
                        }
                        HStack{
                            
                            HStack{
                                // MARK: premiere card
                                HStack{
                                    ZStack{
                                        Rectangle()
                                            .stroke(.blue, lineWidth: 4)
                                        
                                            .frame(width: 96,height: 99)
                                        VStack{
                                            Text("5 ")
                                            Text("QUIZ")
                                            VStack{
                                                Text("FAIS")
                                            }
                                        }
                                    }
                                    HStack{
                                        
                                        ZStack{
                                            // MARK: deuxieme card
                                            
                                            Rectangle()
                                                .stroke(.blue, lineWidth: 4)
                                            
                                                .frame(width: 96,height: 99 )
                                            VStack {
                                                
                                                Text("96%")
                                                    .foregroundStyle(.white)
                                                
                                                Text("bonnes")
                                                    .foregroundStyle(.white)
                                                
                                                VStack{
                                                    Text("REPONSES")
                                                        .foregroundStyle(.white)
                                                }
                                            }
                                        }
                                        
                                        HStack{
                                            
                                            ZStack{
                                                // MARK: Troisieme card
                                                
                                                Rectangle()
                                                    .stroke(.blue, lineWidth: 4)
                                                    .frame(width: 96, height: 99)
                                                VStack{
                                                    Text("3")
                                                    Text("Quiz" )
                                                    VStack{
                                                        Text ("PAR")
                                                        Text("semaine")
                                                    }
                                                    
                                                }
                                                
                                            }
                                        }
                                    }
                                }
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            
                            // info
                            
                        }
                        Section("Informations") {
                            Label ("jeanemail.com" , systemImage: "bell")
                            Label("confidentialitÃ©", systemImage:"lock")
                            Label("mode sombre" , systemImage:"moon")
                            
                        }
                        
                    }
                }
            }
        }
    }
}


#Preview {
    ProfileView()
}
