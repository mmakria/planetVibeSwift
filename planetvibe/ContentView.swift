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
    ContentView(article: Article(title: "Mars", description: "Description", category: "Solar System", date: "28/12/2025", author: "Thomas", image: .mars, sections: [ArticleSection(title: "Test", content: "Test")]))
        .environmentObject(QuizProgressStore(quizzes: quizzes))
}


