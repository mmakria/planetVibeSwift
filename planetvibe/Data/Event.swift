//
//  Event.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import Foundation
import SwiftUI

struct Event : Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var date: String
    var place: String
    var image: ImageResource
}

import Foundation

var events: [Event] = [
    Event(
        title: "Nuit des Étoiles",
        description: "Observation des étoiles, planètes et astronomie pour tous les passionnés.",
        date: "08/08/2026",
        place: "Observatoire de Paris, Paris",
        image: .nuitEtoiles
    ),
    Event(
        title: "Fête de la Science - Spécial Espace",
        description: "Expositions et conférences sur les missions spatiales et l’astronomie.",
        date: "12/10/2026",
        place: "Cité des Sciences et de l’Industrie, Paris",
        image: .fetesSciences
    ),
    Event(
        title: "Planétarium en Fête",
        description: "Séances de projection et ateliers pour découvrir le système solaire.",
        date: "20/09/2026",
        place: "Planétarium de Strasbourg, Strasbourg",
        image: .planetarium
    ),
    Event(
        title: "Rencontre Astronomie et Fusées",
        description: "Présentation de fusées expérimentales et conférences sur l’exploration spatiale.",
        date: "05/07/2026",
        place: "Cité de l’Espace, Toulouse",
        image: .articleWeek
    ),
    Event(
        title: "Festival du Ciel et de l’Espace",
        description: "Animations, observations et rencontres avec des astronomes professionnels.",
        date: "15/11/2026",
        place: "Observatoire de Lyon, Lyon",
        image: .explorespace
    )
]
