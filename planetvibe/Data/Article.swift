//
//  Article.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import Foundation
import SwiftUI


struct Article: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var description: String
    var category: String
    var date: String
    var author: String
    var image: ImageResource
}


var articles: [Article] = [

    Article(
        title: "Terre",
        description: "La Terre est la troisième planète du système solaire et la seule connue pour abriter la vie.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .earth
    ),
    Article(
        title: "Mars",
        description: "Mars est connue comme la planète rouge, avec des volcans géants et des vallées profondes.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .mars
    ),
    Article(
        title: "Jupiter",
        description: "Jupiter est la plus grande planète du système solaire et possède une grande tache rouge.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .jupiter
    ),
    Article(
        title: "Neptune",
        description: "Neptune est une planète géante gazeuse bleue, connue pour ses vents violents.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .neptune
    ),
    Article(
        title: "Mercure",
        description: "Mercure est la plus proche du Soleil, avec des températures extrêmes et pas d’atmosphère significative.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .mercury
    ),
    
    // Satellites / engins spatiaux
    Article(
        title: "Hubble",
        description: "Le télescope spatial Hubble observe l’univers depuis l’orbite terrestre depuis 1990.",
        category: "Satellite",
        date: "24/04/1990",
        author: "NASA",
        image: .hubble
    ),
    Article(
        title: "Dragon",
        description: "Dragon est un vaisseau spatial développé par SpaceX pour transporter des astronautes et du fret.",
        category: "Satellite",
        date: "08/12/2010",
        author: "SpaceX",
        image: .dragon
    ),
    Article(
        title: "Apollo",
        description: "Apollo est le programme spatial américain qui a permis à l’homme de marcher sur la Lune.",
        category: "Satellite",
        date: "29/07/1961",
        author: "NASA",
        image: .apolloCsm
    ),
    Article(
        title: "CSM",
        description: "Le Command/Service Module (CSM) faisait partie du vaisseau spatial Apollo pour le transport des astronautes.",
        category: "Satellite",
        date: "26/02/1966",
        author: "NASA",
        image: .apolloCsm
    )]
    
