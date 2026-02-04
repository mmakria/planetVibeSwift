import SwiftUI

struct ProfileView : View {
    var body: some View {
        //        Button(action: {
        //
        //        },label:{
        NavigationStack{
            ZStack{
                Color(.primaryBlue)
                    .ignoresSafeArea()
                
                VStack{
                    
                    
                    VStack (spacing:45) {
                        Image (.pandora)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 99, height: 99)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                        
                        Text("prenom et nom")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                        NavigationLink("Modifier le profil") {

                        }
                        
                        
                        
                        VStack(alignment:.leading){
                            
                            
                            
                            Text("MES STATISTIQUES")
                            
                                .padding()
                            HStack{
                            }
                            // MARK: premiere card
                            
                            HStack{
                                VStack{
                                    
                                    
                                    ZStack{
                                        
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(.blue, lineWidth: 4)
                                        
                                            .frame(width: 120,height: 160)
                                        VStack{
                                            Text("5 ")
                                                .font(.system(size:70))
                                            Text("QUIZ")
                                            VStack{
                                                Text("FAIS")
                                            }
                                        }}
                                }
                                HStack{
                                    
                                    ZStack{
                                        // MARK: deuxieme card
                                        
                                        RoundedRectangle(cornerRadius: 12)
                                            .stroke(.blue, lineWidth: 4)
                                        
                                            .frame(width: 120,height: 160 )
                                        VStack {
                                            
                                            Text("96%")
                                                .font(.system(size:50))
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
                                            
                                            RoundedRectangle(cornerRadius: 12)
                                                .stroke(.blue, lineWidth: 4)
                                                .frame(width: 120, height: 160)
                                            VStack{
                                                Text("3")
                                                    .font(.system(size:70))
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
                        NavigationLink {
                            
                        } label: {
                            
                            Label("jeanemail.com" , systemImage: "bell")
                        }
                        
                        NavigationLink{
                            
                        }label: {
                            Label("confidentialitÃ©", systemImage:"lock")
                        }
                        NavigationLink{
                            
                        }label: {
                            Label("mode sombre" , systemImage:"moon")
                        }
                    }
                }
                
            }
        }
        
    }
}




//}

#Preview {
    ProfileView()
}
