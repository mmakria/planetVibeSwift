//
//  WikiCardView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 29/01/2026.
//

import SwiftUI

struct WikiCardView : View {
    
    var article: Article
    
    var body: some View {
        
        NavigationLink{
            WikiDetailView(article: article)
            
        } label: {
            ZStack {
                
                Text(article.title)
                    .padding()
                    .padding(.top, 28)
                    .frame(width: 120, height: 80)
                    .bold()
                    .font(.title3)
                    .background(.gradientBlue100)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                
                Image(article.image)
                    .shadow(radius: 3, x: 6, y: 12)
                    .offset(y: -38)
            }
            .padding(.top)
            
        }
    }
}




//struct Article {
//    var title: String
//    var description: String
//    var category: String
//    var date: String
//    var author: String
//    var image: ImageResource
//}

#Preview {
    WikiCardView(
        article: Article(
            title: "Mars",
            description: "Description",
            category: "Solar System",
            date: "28/12/2025",
            author: "Thomas",
            image: .mars
        )
    )
}
