//
//  Quiz.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import Foundation
import SwiftUI

struct Question: Identifiable {
    var id = UUID()
    var questionTitle: String
    var answer: String
    var image: ImageResource
    var propositions: [String]
    
}

//  -------------------------------- DATA + STRUCT QUESTIONS ----------------------------------


let spaceQuestions: [Question] = [
    
    Question(
        questionTitle: "Combien y a-t-il de planètes dans le système solaire ?",
        answer: "8",
        image: .earth,
        propositions: ["7", "8", "9", "10"]
    ),
    
    Question(
        questionTitle: "Quelle est la plus grande planète du système solaire ?",
        answer: "Jupiter",
        image: .jupiter,
        propositions: ["Mars", "Jupiter", "Saturne", "Terre"]
    ),
    
    Question(
        questionTitle: "Quelle planète est appelée la planète rouge ?",
        answer: "Mars",
        image: .apolloCsm,
        propositions: ["Vénus", "Mars", "Mercure", "Neptune"]
    ),
    
    Question(
        questionTitle: "Quelle étoile est au centre du système solaire ?",
        answer: "Le Soleil",
        image: .jupiter,
        propositions: ["Sirius", "Polaris", "Le Soleil", "Alpha Centauri"]
    ),
    
    Question(
        questionTitle: "Quel est le nom de notre galaxie ?",
        answer: "La Voie Lactée",
        image: .dragon,
        propositions: ["Andromède", "Orion", "La Voie Lactée", "Centaurus"]
    )
]


//  -------------------------------- DATA + STRUCT QUIZ ----------------------------------



struct Quiz: Identifiable {
    var id = UUID()
    var title: String
    var level: Int
    var theme: String
    var image: ImageResource
    var questions: [Question]
}


var quizzes: [Quiz] = [
    Quiz(
        title: "Mercure",
        level: 1,
        theme: "Système solaire",
        image: .mercury,
        questions: spaceQuestions
    ),

    Quiz(
        title: "Vénus",
        level: 1,
        theme: "Système solaire",
        image: .mercury,
        questions: spaceQuestions
    ),

    Quiz(
        title: "Terre",
        level: 1,
        theme: "Système solaire",
        image: .earth,
        questions: spaceQuestions
    ),

    Quiz(
        title: "Mars",
        level: 1,
        theme: "Système solaire",
        image: .mars,
        questions: spaceQuestions
    ),

    Quiz(
        title: "Jupiter",
        level: 1,
        theme: "Système solaire",
        image: .jupiter,
        questions: spaceQuestions
    ),

    Quiz(
        title: "Saturne",
        level: 1,
        theme: "Système solaire",
        image: .earth,
        questions: spaceQuestions
    ),

    Quiz(
        title: "Uranus",
        level: 1,
        theme: "Système solaire",
        image: .jupiter,
        questions: spaceQuestions
    ),

    Quiz(
        title: "Neptune",
        level: 1,
        theme: "Système solaire",
        image: .neptune,
        questions: spaceQuestions
    ),

]

//    Quiz(
//        title: "Pluton",
//        level: 1,
//        theme: "Système solaire",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    // MARK: - Level 2
//
//    Quiz(
//        title: "Étoiles",
//        level: 2,
//        theme: "Astronomie",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    Quiz(
//        title: "Galaxies",
//        level: 2,
//        theme: "Astronomie",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    Quiz(
//        title: "Orbites",
//        level: 2,
//        theme: "Physique",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    Quiz(
//        title: "Gravité",
//        level: 2,
//        theme: "Physique",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    // MARK: - Level 3
//
//    Quiz(
//        title: "Relativité",
//        level: 3,
//        theme: "Physique",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    Quiz(
//        title: "Cosmologie",
//        level: 3,
//        theme: "Univers",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    Quiz(
//        title: "Exoplanètes",
//        level: 3,
//        theme: "Astronomie",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    Quiz(
//        title: "Trousnoirs",
//        level: 3,
//        theme: "Astrophysique",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    // MARK: - Level 4
//
//    Quiz(
//        title: "Multivers",
//        level: 4,
//        theme: "Théories",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    ),
//
//    Quiz(
//        title: "Quantique",
//        level: 4,
//        theme: "Physique",
//        image: /* ImageResource à renseigner */,
//        questions: []
//    )
//]


var firstQuiz: Quiz = Quiz(
    title: "title question",
    level: 1,
    theme: "Généralités sur l'Espace",
    image: .mars,
    questions: [Question(
        questionTitle: "Question Tittle",
        answer: "2",
        image: .mars,
        propositions: ["1", "2", "3", "4"]
        
    ),
    ]
)
