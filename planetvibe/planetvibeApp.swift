//
//  planetvibeApp.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

@main
struct planetvibeApp: App {
    
    @StateObject private var progress = QuizProgressStore(quizzes: quizzes)
    
    var body: some Scene {
        WindowGroup {
            ContentView(article: articles[1])
                .environmentObject(progress)
                .preferredColorScheme(.dark)
        }
    }
}
