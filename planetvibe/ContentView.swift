import SwiftUI

struct ContentView: View {
    
    var article: Article
    @EnvironmentObject var progress: QuizProgressStore
    
    var body: some View {
        TabView {
            
            WikiHomeView()
                .tabItem {
                    Label("Planètes", systemImage: "graduationcap")
                }
            QuizHomeView()
                .tabItem {
                    Label("Quiz", systemImage: "square.grid.2x2.fill")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    ContentView(article: articles[1])
        .environmentObject(QuizProgressStore(quizzes: quizzes))
}


