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
    let sections: [ArticleSection]
}


struct ArticleSection: Identifiable, Equatable{
    let id = UUID()
    let title: String
    let content: String
}

// --------------------------   DATA ARTICLE SECTION ------------------------------------

// Earth article sections
let earthSections: [ArticleSection] = [
    ArticleSection(
        title: "Position dans le système solaire",
        content: "La Terre orbite autour du Soleil en environ 365 jours. Elle se situe dans la zone habitable, une région où les températures permettent la présence d’eau liquide."
    ),
    ArticleSection(
        title: "Atmosphère et climat",
        content: "L’atmosphère terrestre est composée majoritairement d’azote et d’oxygène. Elle protège la surface des radiations solaires et régule la température grâce à l’effet de serre naturel."
    ),
    ArticleSection(
        title: "Vie sur Terre",
        content: "La Terre est la seule planète connue abritant la vie. Des millions d’espèces vivent dans des environnements variés, des océans profonds aux montagnes enneigées."
    )
]

// Mars article sections

let marsSections: [ArticleSection] = [
    ArticleSection(
        title: "Pourquoi Mars est rouge",
        content: "La couleur rouge de Mars provient de l’oxyde de fer présent dans son sol. Cette poussière riche en rouille recouvre une grande partie de la surface."
    ),
    ArticleSection(
        title: "Paysages martiens",
        content: "Mars possède les plus grands volcans et canyons du système solaire, dont Olympus Mons et Valles Marineris, témoignant d’un passé géologique actif."
    ),
    ArticleSection(
        title: "Recherche de vie",
        content: "Les missions robotiques explorent Mars pour trouver des indices d’eau ancienne et de possibles traces de vie microbienne passée."
    )
]

// Jupiter article sections

let jupiterSection: [ArticleSection] = [
    ArticleSection(
        title: "Une géante gazeuse",
        content: "Jupiter est principalement composée d’hydrogène et d’hélium. Elle ne possède pas de surface solide comme la Terre."
    ),
    ArticleSection(
        title: "La Grande Tache Rouge",
        content: "Cette immense tempête est observée depuis plus de 300 ans. Elle est assez grande pour engloutir plusieurs planètes de la taille de la Terre."
    ),
    ArticleSection(
        title: "Système de lunes",
        content: "Jupiter possède de nombreuses lunes, dont Europe, Ganymède et Io, qui sont des mondes fascinants à part entière."
    )
]

// Neptune article sections

let neptuneSections: [ArticleSection] = [
    ArticleSection(
        title: "Composition et couleur",
        content: "Neptune est principalement composée d’hydrogène, d’hélium et de méthane, ce dernier donnant à la planète sa couleur bleue caractéristique."
    ),
    ArticleSection(
        title: "Vents et tempêtes",
        content: "Neptune possède certains des vents les plus rapides du système solaire, atteignant jusqu’à 2 100 km/h, ainsi que des tempêtes violentes."
    ),
    ArticleSection(
        title: "Exploration spatiale",
        content: "La sonde Voyager 2 est la seule mission à avoir survolé Neptune en 1989, fournissant des données précieuses sur cette planète lointaine."
    )
]

// Mercury article sections


let mercurySections: [ArticleSection] = [
    ArticleSection(
        title: "Proximité du Soleil",
        content: "Mercure est la planète la plus proche du Soleil, ce qui entraîne des températures très élevées le jour et très basses la nuit."
    ),
    ArticleSection(
        title: "Surface et cratères",
        content: "La surface de Mercure est couverte de cratères d’impact, semblable à celle de la Lune, témoignant d’une histoire géologique ancienne."
    ),
    ArticleSection(
        title: "Absence d’atmosphère",
        content: "Mercure possède une atmosphère très ténue, appelée exosphère, composée principalement d’atomes éjectés de sa surface."
    )
]

// Hubble article sections


let hubbleSections: [ArticleSection] = [
    ArticleSection(
        title: "Lancement et mission",
        content: "Hubble a été lancé en 1990 pour observer l’univers dans des longueurs d’onde visibles, ultraviolettes et infrarouges."
    ),
    ArticleSection(
        title: "Découvertes majeures",
        content: "Le télescope a permis de nombreuses découvertes, comme la détermination de la vitesse d’expansion de l’univers."
    ),
    ArticleSection(
        title: "Fonctionnement en orbite",
        content: "Placée en orbite basse, Hubble évite la distorsion atmosphérique, offrant des images d’une netteté exceptionnelle."
    )
]

// Dragon article sections

let dragonSections: [ArticleSection] = [
    ArticleSection(
        title: "Développement et objectifs",
        content: "Dragon a été conçu pour fournir un transport fiable vers la Station spatiale internationale, avec des capacités cargo et habitées."
    ),
    ArticleSection(
        title: "Caractéristiques techniques",
        content: "Le vaisseau est réutilisable, équipé de systèmes de sécurité avancés et capable d’amerrir de manière contrôlée."
    ),
    ArticleSection(
        title: "Missions réussies",
        content: "Depuis son premier vol en 2010, Dragon a effectué de nombreuses missions, renforçant la présence commerciale dans l’espace."
    )
]

// Apollo article sections

let apolloSections: [ArticleSection] = [
    ArticleSection(
        title: "Objectifs du programme",
        content: "Apollo visait à réaliser un alunissage habité et à ramener les astronautes en toute sécurité sur Terre."
    ),
    ArticleSection(
        title: "Les missions lunaires",
        content: "De 1969 à 1972, six missions Apollo ont permis à douze astronautes d’explorer la surface lunaire."
    ),
    ArticleSection(
        title: "Héritage scientifique",
        content: "Les missions ont apporté des échantillons lunaires et des données cruciales pour la compréhension de la Lune."
    )
]

// CSM article sections

let csmSections: [ArticleSection] = [
    ArticleSection(
        title: "Fonction du CSM",
        content: "Le CSM servait de module principal pour le voyage vers la Lune, abritant l’équipage et les systèmes de support."
    ),
    ArticleSection(
        title: "Conception et composants",
        content: "Il comprenait le module de commande pour l’équipage et le module de service contenant propulsion et énergie."
    ),
    ArticleSection(
        title: "Rôle dans les missions Apollo",
        content: "Le CSM assurait la navigation, le contrôle et la rentrée atmosphérique après la mission lunaire."
    )
]

// --------------------------   DATA ARTICLES ------------------------------------

var articles: [Article] = [
    // Earth Article
    Article(
        title: "Terre",
        description: "La Terre est la troisième planète du système solaire et la seule connue pour abriter la vie.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .earth,
        sections: earthSections
    ),
    // Mars Article
    Article(
        title: "Mars",
        description: "Mars est connue comme la planète rouge, avec des volcans géants et des vallées profondes.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .mars,
        sections: marsSections
    ),
    // Jupiter Article
    Article(
        title: "Jupiter",
        description: "Jupiter est la plus grande planète du système solaire et possède une grande tache rouge.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .jupiter,
        sections:jupiterSection
    ),
    Article(
        title: "Neptune",
        description: "Neptune est une planète géante gazeuse bleue, connue pour ses vents violents.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .neptune,
        sections: neptuneSections
    ),
    Article(
        title: "Mercure",
        description: "Mercure est la plus proche du Soleil, avec des températures extrêmes et pas d’atmosphère significative.",
        category: "Système solaire",
        date: "28/12/2026",
        author: "Thomas GrosJEAN",
        image: .mercury,
        sections: mercurySections
    ),
    
    // Satellites / engins spatiaux
    Article(
        title: "Hubble",
        description: "Le télescope spatial Hubble observe l’univers depuis l’orbite terrestre depuis 1990.",
        category: "Satellite",
        date: "24/04/1990",
        author: "NASA",
        image: .hubble,
        sections: hubbleSections
    ),
    Article(
        title: "Dragon",
        description: "Dragon est un vaisseau spatial développé par SpaceX pour transporter des astronautes et du fret.",
        category: "Satellite",
        date: "08/12/2010",
        author: "SpaceX",
        image: .dragon,
        sections: dragonSections
    ),
    Article(
        title: "Apollo",
        description: "Apollo est le programme spatial américain qui a permis à l’homme de marcher sur la Lune.",
        category: "Satellite",
        date: "29/07/1961",
        author: "NASA",
        image: .apolloCsm,
        sections: apolloSections
    ),
    Article(
        title: "CSM",
        description: "Le Command/Service Module (CSM) faisait partie du vaisseau spatial Apollo pour le transport des astronautes.",
        category: "Satellite",
        date: "26/02/1966",
        author: "NASA",
        image: .apolloCsm,
        sections: csmSections
    )]
