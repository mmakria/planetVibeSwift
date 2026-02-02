//
//  Article.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import Foundation
import SwiftUI


struct KeyFact: Identifiable, Equatable {
    let id = UUID()
    let icon: String      // SF Symbol name
    let label: String     // ex: "Diamètre"
    let value: String     // ex: "12 742 km"
}

struct Article: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var category: String
    var image: ImageResource
    var imageFull: ImageResource?
    let sections: [ArticleSection]
    var keyFacts: [KeyFact]
    var funFact: String
}


struct ArticleSection: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let content: String
    let image: ImageResource?

    init(title: String, content: String, image: ImageResource? = nil) {
        self.title = title
        self.content = content
        self.image = image
    }
}

// --------------------------   DATA ARTICLE SECTION ------------------------------------

// Earth article sections
let earthSections: [ArticleSection] = [
    ArticleSection(
        title: "Position dans le système solaire",
        content: "La Terre orbite autour du Soleil à une distance moyenne de 150 millions de kilomètres, bouclant une révolution complète en environ 365,25 jours. Elle se situe dans la zone habitable, une région où les températures permettent la présence d'eau liquide à la surface. Cette position idéale, ni trop proche ni trop éloignée du Soleil, est l'un des facteurs clés qui rendent la vie possible. L'inclinaison de son axe à 23,5° est aussi responsable de l'alternance des saisons."
    ),
    ArticleSection(
        title: "Atmosphère et climat",
        content: "L'atmosphère terrestre est composée à 78 % d'azote et 21 % d'oxygène, avec des traces de vapeur d'eau, de CO₂ et d'autres gaz. Elle agit comme un bouclier protecteur contre les radiations solaires et les micrométéorites. L'effet de serre naturel maintient une température moyenne de 15 °C, sans quoi la planète serait glacée à -18 °C. La couche d'ozone, située entre 20 et 40 km d'altitude, filtre les rayons ultraviolets nocifs pour les êtres vivants."
    ),
    ArticleSection(
        title: "Vie sur Terre",
        content: "La Terre est la seule planète connue à ce jour abritant la vie, avec une biodiversité estimée à plus de 8 millions d'espèces. Les océans, qui couvrent 71 % de la surface, abritent une faune immense, des récifs coralliens aux fosses abyssales. Sur les continents, la vie s'est adaptée à des environnements extrêmes : déserts brûlants, forêts tropicales, sommets enneigés et régions polaires. Cette diversité repose sur le cycle de l'eau et un équilibre délicat entre atmosphère, géologie et biologie."
    )
]

// Mars article sections

let marsSections: [ArticleSection] = [
    ArticleSection(
        title: "Pourquoi Mars est rouge",
        content: "La couleur rouge de Mars provient de l'oxyde de fer présent dans son sol. Cette poussière riche en rouille recouvre une grande partie de la surface."
    ),
    ArticleSection(
        title: "Paysages martiens",
        content: "Mars possède les plus grands volcans et canyons du système solaire, dont Olympus Mons et Valles Marineris, témoignant d'un passé géologique actif."
    ),
    ArticleSection(
        title: "Recherche de vie",
        content: "Les missions robotiques explorent Mars pour trouver des indices d'eau ancienne et de possibles traces de vie microbienne passée."
    )
]

// Jupiter article sections

let jupiterSection: [ArticleSection] = [
    ArticleSection(
        title: "Une géante gazeuse",
        content: "Jupiter est principalement composée d'hydrogène et d'hélium. Elle ne possède pas de surface solide comme la Terre."
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
        content: "Neptune est principalement composée d'hydrogène, d'hélium et de méthane, ce dernier donnant à la planète sa couleur bleue caractéristique."
    ),
    ArticleSection(
        title: "Vents et tempêtes",
        content: "Neptune possède certains des vents les plus rapides du système solaire, atteignant jusqu'à 2 100 km/h, ainsi que des tempêtes violentes."
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
        content: "La surface de Mercure est couverte de cratères d'impact, semblable à celle de la Lune, témoignant d'une histoire géologique ancienne."
    ),
    ArticleSection(
        title: "Absence d'atmosphère",
        content: "Mercure possède une atmosphère très ténue, appelée exosphère, composée principalement d'atomes éjectés de sa surface."
    )
]

// Hubble article sections


let hubbleSections: [ArticleSection] = [
    ArticleSection(
        title: "Lancement et mission",
        content: "Hubble a été lancé en 1990 pour observer l'univers dans des longueurs d'onde visibles, ultraviolettes et infrarouges."
    ),
    ArticleSection(
        title: "Découvertes majeures",
        content: "Le télescope a permis de nombreuses découvertes, comme la détermination de la vitesse d'expansion de l'univers."
    ),
    ArticleSection(
        title: "Fonctionnement en orbite",
        content: "Placée en orbite basse, Hubble évite la distorsion atmosphérique, offrant des images d'une netteté exceptionnelle."
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
        content: "Le vaisseau est réutilisable, équipé de systèmes de sécurité avancés et capable d'amerrir de manière contrôlée."
    ),
    ArticleSection(
        title: "Missions réussies",
        content: "Depuis son premier vol en 2010, Dragon a effectué de nombreuses missions, renforçant la présence commerciale dans l'espace."
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
        content: "De 1969 à 1972, six missions Apollo ont permis à douze astronautes d'explorer la surface lunaire."
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
        content: "Le CSM servait de module principal pour le voyage vers la Lune, abritant l'équipage et les systèmes de support."
    ),
    ArticleSection(
        title: "Conception et composants",
        content: "Il comprenait le module de commande pour l'équipage et le module de service contenant propulsion et énergie."
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
        category: "Système solaire",
        image: .earth,
        imageFull: .earthFull,
        sections: earthSections,
        keyFacts: [
            KeyFact(icon: "circle.circle", label: "Diamètre", value: "12 742 km"),
            KeyFact(icon: "thermometer.medium", label: "Température moy.", value: "15 °C"),
            KeyFact(icon: "sun.max.fill", label: "Distance au Soleil", value: "150 M km"),
            KeyFact(icon: "clock.fill", label: "Jour", value: "24 h")
        ],
        funFact: "La Terre est la seule planète du système solaire à ne pas porter le nom d'un dieu grec ou romain !"
    ),
    // Mars Article
    Article(
        title: "Mars",
        category: "Système solaire",
        image: .mars,
        imageFull: .marsFull,
        sections: marsSections,
        keyFacts: [
            KeyFact(icon: "circle.circle", label: "Diamètre", value: "6 779 km"),
            KeyFact(icon: "thermometer.snowflake", label: "Température moy.", value: "-63 °C"),
            KeyFact(icon: "mountain.2.fill", label: "Plus haut sommet", value: "21 km"),
            KeyFact(icon: "clock.fill", label: "Jour", value: "24 h 37 min")
        ],
        funFact: "Olympus Mons sur Mars est le plus grand volcan du système solaire — presque 3 fois la hauteur de l'Everest !"
    ),
    // Jupiter Article
    Article(
        title: "Jupiter",
        category: "Système solaire",
        image: .jupiter,
        imageFull: .jupiterFull,
        sections: jupiterSection,
        keyFacts: [
            KeyFact(icon: "circle.circle", label: "Diamètre", value: "139 820 km"),
            KeyFact(icon: "moon.fill", label: "Lunes connues", value: "95"),
            KeyFact(icon: "wind", label: "Vents max", value: "620 km/h"),
            KeyFact(icon: "clock.fill", label: "Jour", value: "9 h 56 min")
        ],
        funFact: "La Grande Tache Rouge de Jupiter est une tempête qui fait rage depuis plus de 350 ans et qui pourrait contenir 2 Terres !"
    ),
    Article(
        title: "Neptune",
        category: "Système solaire",
        image: .neptune,
        imageFull: .neptuneFull,
        sections: neptuneSections,
        keyFacts: [
            KeyFact(icon: "circle.circle", label: "Diamètre", value: "49 528 km"),
            KeyFact(icon: "wind", label: "Vents max", value: "2 100 km/h"),
            KeyFact(icon: "sun.max.fill", label: "Distance au Soleil", value: "4,5 Mrd km"),
            KeyFact(icon: "clock.fill", label: "Année", value: "165 ans")
        ],
        funFact: "Neptune a les vents les plus rapides du système solaire — plus de 2 000 km/h, soit 6 fois plus vite qu'un ouragan sur Terre !"
    ),
    Article(
        title: "Mercure",
        category: "Système solaire",
        image: .mercury,
        imageFull: .mercuryFull,
        sections: mercurySections,
        keyFacts: [
            KeyFact(icon: "circle.circle", label: "Diamètre", value: "4 880 km"),
            KeyFact(icon: "thermometer.sun.fill", label: "Temp. max", value: "430 °C"),
            KeyFact(icon: "thermometer.snowflake", label: "Temp. min", value: "-180 °C"),
            KeyFact(icon: "clock.fill", label: "Jour", value: "59 jours")
        ],
        funFact: "Un jour sur Mercure dure 59 jours terrestres, mais son année ne fait que 88 jours — un jour y dure presque une année !"
    ),

    // Satellites / engins spatiaux
    Article(
        title: "Hubble",
        category: "Satellite",
        image: .hubble,
        imageFull: .hubbleFull,
        sections: hubbleSections,
        keyFacts: [
            KeyFact(icon: "scope", label: "Miroir", value: "2,4 m"),
            KeyFact(icon: "arrow.up.and.down", label: "Altitude", value: "547 km"),
            KeyFact(icon: "scalemass.fill", label: "Masse", value: "11 110 kg"),
            KeyFact(icon: "calendar", label: "En service", value: "Depuis 1990")
        ],
        funFact: "Hubble fait le tour de la Terre en seulement 97 minutes et a pris plus de 1,5 million de photos de l'univers !"
    ),
    Article(
        title: "Dragon",
        category: "Satellite",
        image: .dragon,
        imageFull: .dragonFull,
        sections: dragonSections,
        keyFacts: [
            KeyFact(icon: "person.3.fill", label: "Équipage max", value: "7 personnes"),
            KeyFact(icon: "shippingbox.fill", label: "Cargo", value: "6 000 kg"),
            KeyFact(icon: "arrow.counterclockwise", label: "Réutilisable", value: "Oui"),
            KeyFact(icon: "flame.fill", label: "Propulseurs", value: "16 Draco")
        ],
        funFact: "Le nom Dragon vient de la chanson 'Puff, the Magic Dragon' — Elon Musk a choisi ce nom car les critiques disaient que SpaceX était un rêve impossible !"
    ),
    Article(
        title: "Apollo",
        category: "Satellite",
        image: .apolloCsm,
        imageFull: .apolloCsmFull,
        sections: apolloSections,
        keyFacts: [
            KeyFact(icon: "person.2.fill", label: "Astronautes sur la Lune", value: "12"),
            KeyFact(icon: "number", label: "Missions habitées", value: "11"),
            KeyFact(icon: "calendar", label: "Premier alunissage", value: "1969"),
            KeyFact(icon: "moon.fill", label: "Échantillons lunaires", value: "382 kg")
        ],
        funFact: "L'ordinateur de bord d'Apollo 11 avait moins de puissance qu'une calculatrice de poche actuelle — et il a quand même envoyé des hommes sur la Lune !"
    ),
    Article(
        title: "CSM",
        category: "Satellite",
        image: .apolloCsm,
        imageFull: .apolloCsmFull,
        sections: csmSections,
        keyFacts: [
            KeyFact(icon: "person.3.fill", label: "Équipage", value: "3 astronautes"),
            KeyFact(icon: "scalemass.fill", label: "Masse totale", value: "30 332 kg"),
            KeyFact(icon: "arrow.up.forward", label: "Vitesse de rentrée", value: "40 000 km/h"),
            KeyFact(icon: "shield.fill", label: "Bouclier thermique", value: "2 700 °C")
        ],
        funFact: "Le bouclier thermique du CSM devait résister à 2 700 °C lors de la rentrée dans l'atmosphère — plus chaud que de la lave en fusion !"
    )
]
