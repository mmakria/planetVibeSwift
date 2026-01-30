//
//  planetvibeApp.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import SwiftUI

@main
struct planetvibeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(article: Article(title: "Mars", description: "Description", category: "Solar System", date: "28/12/2025", author: "Thomas", image: .mars, sections: [ArticleSection(title: "Test", content: "Test")]))
        }
    }
}
