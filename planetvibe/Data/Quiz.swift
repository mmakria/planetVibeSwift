//
//  Quiz.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import Foundation
import SwiftUI


struct Quiz: Identifiable {
    var id = UUID()
    var title: String
    var level: Int
    var theme: String
    var image: ImageResource
    var questions: [Question]
}


struct Question: Identifiable {
    var id = UUID()
    var questionTitle: String
    var answer: String
    var image: ImageResource
    var propositions: [String]
    
}

//var firstQuiz: Quiz = Quiz(
//    title: <#T##String#>,
//    level: <#T##Int#>,
//    theme: <#T##String#>,
//    image: <#T##ImageResource#>,
//    questions: [Question(
//        questionTitle: <#T##String#>,
//        answer: <#T##String#>,
//        propositions: <#T##[String]#>
//    ),
//    ]
//)
