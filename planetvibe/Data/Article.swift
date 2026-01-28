//
//  Article.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import Foundation
import SwiftUI


struct Article {
    var title: String
    var description: String
    var category: String
    var date: String
    var author: String
    var image: ImageResource
}


var articles: [Article] = [Article(
    title: "Planete",
    description: "Description de l'article planete",
    category: "Planete",
    date: "28/12/2026",
    author: "Thomas GrosJEAN",
    image: .mars
)]

