//
//  Quiz.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import Foundation
import SwiftUI

// MARK: - Models

struct Question: Identifiable {
    var id = UUID()
    var questionTitle: String
    var answer: String
    var image: ImageResource
    var propositions: [String]
}

struct Quiz: Identifiable {
    var id = UUID()
    var title: String
    var level: Int
    var theme: String
    var image: ImageResource
    var questions: [Question]
}

// MARK: - QUESTIONS DATA

// =====================
// LEVEL 1 — SYSTÈME SOLAIRE (Bases)
// =====================

let l1_planetesTelluriques: [Question] = [
    Question(
        questionTitle: "Quelles planètes sont dites « telluriques » ?",
        answer: "Mercure, Vénus, Terre, Mars",
        image: .mercury,
        propositions: [
            "Mercure, Vénus, Terre, Mars",
            "Jupiter, Saturne, Uranus, Neptune",
            "Terre, Jupiter, Saturne, Mars",
            "Vénus, Saturne, Uranus, Mercure"
        ]
    ),
    Question(
        questionTitle: "Quelle est la planète la plus proche du Soleil ?",
        answer: "Mercure",
        image: .mercury,
        propositions: ["Mercure", "Vénus", "Terre", "Mars"]
    ),
    Question(
        questionTitle: "Quelle planète a une atmosphère très riche en dioxyde de carbone et extrêmement chaude ?",
        answer: "Vénus",
        image: .venus,
        propositions: ["Vénus", "Mars", "Mercure", "Neptune"]
    ),
    Question(
        questionTitle: "Quelle planète possède une grande quantité d’eau liquide à sa surface ?",
        answer: "Terre",
        image: .earth,
        propositions: ["Terre", "Mars", "Vénus", "Mercure"]
    ),
    Question(
        questionTitle: "Quelle planète est surnommée « la planète rouge » ?",
        answer: "Mars",
        image: .mars,
        propositions: ["Mars", "Vénus", "Mercure", "Saturne"]
    )
]

let l1_ordresEtTailles: [Question] = [
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
        questionTitle: "Quel est l’ordre correct des quatre premières planètes depuis le Soleil ?",
        answer: "Mercure, Vénus, Terre, Mars",
        image: .mercury,
        propositions: [
            "Mercure, Vénus, Terre, Mars",
            "Vénus, Mercure, Terre, Mars",
            "Mercure, Terre, Vénus, Mars",
            "Terre, Vénus, Mercure, Mars"
        ]
    ),
    Question(
        questionTitle: "Quelle planète est la plus éloignée du Soleil ?",
        answer: "Neptune",
        image: .neptune,
        propositions: ["Uranus", "Neptune", "Saturne", "Jupiter"]
    ),
    Question(
        questionTitle: "Quelle planète est connue pour ses anneaux très visibles ?",
        answer: "Saturne",
        image: .saturn,
        propositions: ["Saturne", "Mars", "Vénus", "Mercure"]
    )
]

let l1_planetesGeantes: [Question] = [
    Question(
        questionTitle: "Comment appelle-t-on Jupiter et Saturne, principalement composées d’hydrogène et d’hélium ?",
        answer: "Des géantes gazeuses",
        image: .jupiter,
        propositions: [
            "Des géantes gazeuses",
            "Des planètes telluriques",
            "Des planètes naines",
            "Des satellites naturels"
        ]
    ),
    Question(
        questionTitle: "Quelle planète est la plus grande des géantes gazeuses ?",
        answer: "Jupiter",
        image: .jupiter,
        propositions: ["Jupiter", "Saturne", "Uranus", "Neptune"]
    ),
    Question(
        questionTitle: "Quelle planète est célèbre pour ses anneaux composés de glace et de roche ?",
        answer: "Saturne",
        image: .saturn,
        propositions: ["Saturne", "Jupiter", "Uranus", "Neptune"]
    ),
    Question(
        questionTitle: "Uranus et Neptune sont souvent classées comme…",
        answer: "Des géantes de glace",
        image: .uranus,
        propositions: [
            "Des géantes de glace",
            "Des géantes rocheuses",
            "Des planètes naines",
            "Des comètes"
        ]
    ),
    Question(
        questionTitle: "Quelle planète est connue pour sa couleur bleu intense liée notamment au méthane ?",
        answer: "Neptune",
        image: .neptune,
        propositions: ["Neptune", "Mars", "Mercure", "Vénus"]
    )
]

let l1_leSoleilEtNotrePlace: [Question] = [
    Question(
        questionTitle: "Quelle étoile est au centre du système solaire ?",
        answer: "Le Soleil",
        image: .earth,
        propositions: ["Sirius", "Polaris", "Le Soleil", "Alpha Centauri"]
    ),
    Question(
        questionTitle: "Qu’est-ce qu’une orbite (dans le système solaire) ?",
        answer: "La trajectoire d’un objet autour d’un autre",
        image: .apolloCsm,
        propositions: [
            "La trajectoire d’un objet autour d’un autre",
            "La surface d’une planète",
            "Un type d’astéroïde",
            "Une couche de l’atmosphère"
        ]
    ),
    Question(
        questionTitle: "Pourquoi les planètes restent-elles en orbite autour du Soleil ?",
        answer: "Grâce à la gravité",
        image: .jupiter,
        propositions: [
            "Grâce à la gravité",
            "Grâce au vent solaire",
            "Grâce au magnétisme uniquement",
            "Grâce aux anneaux"
        ]
    ),
    Question(
        questionTitle: "Comment s’appelle notre galaxie ?",
        answer: "La Voie Lactée",
        image: .dragon,
        propositions: ["Andromède", "Orion", "La Voie Lactée", "Centaurus"]
    ),
    Question(
        questionTitle: "Que signifie « année-lumière » ?",
        answer: "Une distance",
        image: .dragon,
        propositions: [
            "Une distance",
            "Une durée",
            "Une vitesse",
            "Une température"
        ]
    )
]

// =====================
// LEVEL 2 — LUNE & EXPLORATION (Comprendre et situer)
// =====================

let l2_laLune: [Question] = [
    Question(
        questionTitle: "La Lune est…",
        answer: "Un satellite naturel de la Terre",
        image: .earth,
        propositions: [
            "Un satellite naturel de la Terre",
            "Une planète naine",
            "Une comète",
            "Une étoile"
        ]
    ),
    Question(
        questionTitle: "Pourquoi voit-on des phases de la Lune ?",
        answer: "Parce qu’on voit différentes portions éclairées par le Soleil",
        image: .earth,
        propositions: [
            "Parce qu’on voit différentes portions éclairées par le Soleil",
            "Parce que la Lune change de taille",
            "Parce que la Terre s’éloigne",
            "Parce que le Soleil s’éteint par moments"
        ]
    ),
    Question(
        questionTitle: "Environ combien de temps faut-il à la Lune pour faire une révolution autour de la Terre ?",
        answer: "Environ 27 jours",
        image: .apolloCsm,
        propositions: ["Environ 1 jour", "Environ 7 jours", "Environ 27 jours", "Environ 365 jours"]
    ),
    Question(
        questionTitle: "Pourquoi voit-on (presque) toujours la même face de la Lune ?",
        answer: "Elle tourne sur elle-même au même rythme qu’elle tourne autour de la Terre",
        image: .apolloCsm,
        propositions: [
            "Elle tourne sur elle-même au même rythme qu’elle tourne autour de la Terre",
            "Elle ne tourne pas sur elle-même",
            "Le Soleil éclaire toujours la même moitié",
            "La Terre bloque sa rotation"
        ]
    ),
    Question(
        questionTitle: "Comment appelle-t-on une éclipse de Lune ?",
        answer: "Quand la Terre s’interpose entre le Soleil et la Lune",
        image: .earth,
        propositions: [
            "Quand la Terre s’interpose entre le Soleil et la Lune",
            "Quand la Lune s’interpose entre le Soleil et la Terre",
            "Quand le Soleil s’interpose entre la Terre et la Lune",
            "Quand Mars s’interpose entre la Terre et la Lune"
        ]
    )
]

let l2_missionsSpatiales: [Question] = [
    Question(
        questionTitle: "Que signifie « ISS » ?",
        answer: "Station spatiale internationale",
        image: .dragon,
        propositions: [
            "Station spatiale internationale",
            "Système solaire interne",
            "Institut spatial scientifique",
            "Intercepteur spatial standard"
        ]
    ),
    Question(
        questionTitle: "À quoi sert une fusée au décollage ?",
        answer: "À fournir la poussée pour vaincre la gravité",
        image: .apolloCsm,
        propositions: [
            "À fournir la poussée pour vaincre la gravité",
            "À produire de l’oxygène",
            "À refroidir l’atmosphère",
            "À faire de la lumière"
        ]
    ),
    Question(
        questionTitle: "Pourquoi les astronautes semblent-ils « flotter » dans l’ISS ?",
        answer: "Parce qu’ils sont en chute libre autour de la Terre",
        image: .dragon,
        propositions: [
            "Parce qu’ils sont en chute libre autour de la Terre",
            "Parce qu’il n’y a pas de gravité du tout",
            "Parce qu’ils sont sous l’eau",
            "Parce que la station est aimantée"
        ]
    ),
    Question(
        questionTitle: "Comment appelle-t-on un véhicule sans équipage envoyé explorer l’espace ou des planètes ?",
        answer: "Une sonde",
        image: .dragon,
        propositions: ["Une sonde", "Un satellite météo", "Un astéroïde", "Une météorite"]
    ),
    Question(
        questionTitle: "Quel est le principal rôle d’un bouclier thermique lors d’une rentrée atmosphérique ?",
        answer: "Protéger du chauffage dû aux frottements et à la compression de l’air",
        image: .apolloCsm,
        propositions: [
            "Protéger du chauffage dû aux frottements et à la compression de l’air",
            "Produire de l’énergie solaire",
            "Augmenter la vitesse",
            "Créer de l’oxygène"
        ]
    )
]

let l2_meteoresEtAsteroides: [Question] = [
    Question(
        questionTitle: "Quelle est la différence entre un astéroïde et une comète (en simplifiant) ?",
        answer: "Les comètes sont riches en glaces, les astéroïdes surtout rocheux",
        image: .dragon,
        propositions: [
            "Les comètes sont riches en glaces, les astéroïdes surtout rocheux",
            "Les comètes sont toujours plus grosses",
            "Les astéroïdes ont une queue lumineuse",
            "Les comètes orbitent autour de la Terre uniquement"
        ]
    ),
    Question(
        questionTitle: "Qu’est-ce qu’une météorite ?",
        answer: "Un morceau d’objet spatial qui atteint le sol",
        image: .mars,
        propositions: [
            "Un morceau d’objet spatial qui atteint le sol",
            "Un nuage de gaz",
            "Un satellite artificiel",
            "Une étoile filante vue de près"
        ]
    ),
    Question(
        questionTitle: "Pourquoi voit-on une « étoile filante » ?",
        answer: "Un petit objet brûle en traversant l’atmosphère",
        image: .earth,
        propositions: [
            "Un petit objet brûle en traversant l’atmosphère",
            "Une étoile tombe réellement",
            "La Lune perd des morceaux",
            "Le Soleil s’éteint brièvement"
        ]
    ),
    Question(
        questionTitle: "Comment s’appelle la région du système solaire où se trouvent beaucoup d’astéroïdes entre Mars et Jupiter ?",
        answer: "La ceinture d’astéroïdes",
        image: .jupiter,
        propositions: [
            "La ceinture d’astéroïdes",
            "La couronne solaire",
            "La ceinture de Kuiper",
            "Le nuage d’Oort"
        ]
    ),
    Question(
        questionTitle: "Pourquoi l’atmosphère terrestre nous protège-t-elle des petits objets ?",
        answer: "Beaucoup se consument avant d’atteindre le sol",
        image: .earth,
        propositions: [
            "Beaucoup se consument avant d’atteindre le sol",
            "Elle les attire comme un aimant",
            "Elle les transforme en eau",
            "Elle les renvoie automatiquement vers l’espace"
        ]
    )
]

let l2_mouvementEtGravite: [Question] = [
    Question(
        questionTitle: "Qu’est-ce que la gravité ?",
        answer: "Une force d’attraction entre les masses",
        image: .earth,
        propositions: [
            "Une force d’attraction entre les masses",
            "Une force qui repousse les masses",
            "Un type de lumière",
            "Un gaz présent dans l’espace"
        ]
    ),
    Question(
        questionTitle: "Pourquoi pèse-t-on moins sur la Lune que sur la Terre ?",
        answer: "La gravité y est plus faible",
        image: .apolloCsm,
        propositions: [
            "La gravité y est plus faible",
            "L’air y est plus léger",
            "Le Soleil y est plus loin",
            "La Lune attire plus fort"
        ]
    ),
    Question(
        questionTitle: "Comment s’appelle la vitesse minimale pour rester en orbite autour de la Terre (à une altitude donnée) ?",
        answer: "La vitesse orbitale",
        image: .dragon,
        propositions: ["La vitesse orbitale", "La vitesse sonore", "La vitesse lumineuse", "La vitesse de chute"]
    ),
    Question(
        questionTitle: "Dans l’espace, sans frottements, un objet en mouvement…",
        answer: "Continue à avancer à vitesse constante",
        image: .dragon,
        propositions: [
            "Continue à avancer à vitesse constante",
            "S’arrête rapidement",
            "Accélère tout seul",
            "Tourne forcément sur lui-même"
        ]
    ),
    Question(
        questionTitle: "Pourquoi les planètes ont-elles des saisons (comme sur Terre) ?",
        answer: "À cause de l’inclinaison de l’axe de rotation",
        image: .earth,
        propositions: [
            "À cause de l’inclinaison de l’axe de rotation",
            "À cause de la distance constante au Soleil",
            "À cause de la Lune uniquement",
            "À cause des anneaux"
        ]
    )
]

// =====================
// LEVEL 3 — ÉTOILES & GALAXIES (Approfondir grand public)
// =====================

let l3_lesEtoiles: [Question] = [
    Question(
        questionTitle: "Une étoile brille parce que…",
        answer: "Des réactions de fusion nucléaire produisent de l’énergie",
        image: .dragon,
        propositions: [
            "Des réactions de fusion nucléaire produisent de l’énergie",
            "Elle reflète la lumière d’une planète",
            "Elle est en feu comme du bois",
            "Elle contient de l’oxygène qui brûle"
        ]
    ),
    Question(
        questionTitle: "Le Soleil est…",
        answer: "Une étoile",
        image: .earth,
        propositions: ["Une étoile", "Une planète", "Une comète", "Un astéroïde"]
    ),
    Question(
        questionTitle: "Comment s’appelle la « naissance » d’une étoile, à partir de gaz et de poussières ?",
        answer: "Dans une nébuleuse",
        image: .dragon,
        propositions: ["Dans une nébuleuse", "Dans un océan", "Dans une ceinture d’astéroïdes", "Dans une atmosphère"]
    ),
    Question(
        questionTitle: "Comment appelle-t-on la fin de vie explosive de certaines étoiles massives ?",
        answer: "Une supernova",
        image: .dragon,
        propositions: ["Une supernova", "Une éclipse", "Une orbite", "Une comète"]
    ),
    Question(
        questionTitle: "Pourquoi la couleur d’une étoile est-elle liée à sa température ?",
        answer: "Plus elle est chaude, plus sa lumière tire vers le bleu",
        image: .dragon,
        propositions: [
            "Plus elle est chaude, plus sa lumière tire vers le bleu",
            "Plus elle est froide, plus elle devient invisible",
            "La couleur dépend uniquement de la distance",
            "La couleur dépend uniquement des planètes autour"
        ]
    )
]

let l3_galaxies: [Question] = [
    Question(
        questionTitle: "Qu’est-ce qu’une galaxie ?",
        answer: "Un immense ensemble d’étoiles, de gaz et de poussières lié par la gravité",
        image: .dragon,
        propositions: [
            "Un immense ensemble d’étoiles, de gaz et de poussières lié par la gravité",
            "Une seule étoile très grande",
            "Une planète géante",
            "Un nuage d’air dans l’espace"
        ]
    ),
    Question(
        questionTitle: "Dans quel type de galaxie se trouve le système solaire ?",
        answer: "Une galaxie spirale",
        image: .dragon,
        propositions: ["Une galaxie spirale", "Une galaxie annulaire", "Une galaxie carrée", "Une galaxie comète"]
    ),
    Question(
        questionTitle: "Comment s’appelle la galaxie la plus proche de la Voie Lactée (très connue du grand public) ?",
        answer: "Andromède",
        image: .dragon,
        propositions: ["Andromède", "Orion", "Centaurus", "Cassiopeia"]
    ),
    Question(
        questionTitle: "Pourquoi voit-on la Voie Lactée comme une « bande » dans le ciel ?",
        answer: "Parce qu’on la voit depuis l’intérieur, dans le plan de la galaxie",
        image: .dragon,
        propositions: [
            "Parce qu’on la voit depuis l’intérieur, dans le plan de la galaxie",
            "Parce qu’elle est une comète",
            "Parce que la Lune la coupe en deux",
            "Parce qu’elle est faite d’eau"
        ]
    ),
    Question(
        questionTitle: "Qu’appelle-t-on un amas d’étoiles ?",
        answer: "Un groupe d’étoiles liées par la gravité",
        image: .dragon,
        propositions: [
            "Un groupe d’étoiles liées par la gravité",
            "Une seule étoile très lumineuse",
            "Une planète avec plusieurs lunes",
            "Une traînée de météores"
        ]
    )
]

let l3_lumiereEtDistances: [Question] = [
    Question(
        questionTitle: "Pourquoi regarde-t-on « dans le passé » quand on observe des objets très lointains ?",
        answer: "Parce que la lumière met du temps à nous parvenir",
        image: .dragon,
        propositions: [
            "Parce que la lumière met du temps à nous parvenir",
            "Parce que l’espace inverse le temps",
            "Parce que nos yeux ralentissent",
            "Parce que les étoiles se déplacent trop vite"
        ]
    ),
    Question(
        questionTitle: "Qu’est-ce qu’une année-lumière (rappel) ?",
        answer: "La distance parcourue par la lumière en un an",
        image: .dragon,
        propositions: [
            "La distance parcourue par la lumière en un an",
            "La durée d’un voyage spatial",
            "La vitesse d’une fusée",
            "Le temps d’une rotation terrestre"
        ]
    ),
    Question(
        questionTitle: "Pourquoi les astronomes utilisent-ils souvent des télescopes ?",
        answer: "Pour capter plus de lumière et observer des objets faibles",
        image: .dragon,
        propositions: [
            "Pour capter plus de lumière et observer des objets faibles",
            "Pour rapprocher physiquement les étoiles",
            "Pour rendre l’espace plus chaud",
            "Pour arrêter le mouvement des planètes"
        ]
    ),
    Question(
        questionTitle: "Comment s’appelle l’instrument qui disperse la lumière pour analyser sa composition ?",
        answer: "Un spectroscope",
        image: .dragon,
        propositions: ["Un spectroscope", "Un microscope", "Un baromètre", "Un compas"]
    ),
    Question(
        questionTitle: "À quoi sert l’analyse du spectre d’une étoile ?",
        answer: "À connaître sa composition et sa température (entre autres)",
        image: .dragon,
        propositions: [
            "À connaître sa composition et sa température (entre autres)",
            "À mesurer le poids des astronautes",
            "À ralentir la lumière",
            "À créer de la gravité"
        ]
    )
]

let l3_exoplanetesIntro: [Question] = [
    Question(
        questionTitle: "Qu’est-ce qu’une exoplanète ?",
        answer: "Une planète en dehors du système solaire",
        image: .dragon,
        propositions: [
            "Une planète en dehors du système solaire",
            "Une lune de Jupiter",
            "Une comète très rapide",
            "Une planète naine"
        ]
    ),
    Question(
        questionTitle: "Pourquoi est-il difficile de voir directement une exoplanète ?",
        answer: "Son étoile est très brillante par comparaison",
        image: .dragon,
        propositions: [
            "Son étoile est très brillante par comparaison",
            "Parce qu’elles n’existent pas",
            "Parce que la lumière va trop vite",
            "Parce que la gravité les rend invisibles"
        ]
    ),
    Question(
        questionTitle: "Une méthode très utilisée pour détecter des exoplanètes consiste à observer…",
        answer: "La baisse de luminosité de l’étoile lors du passage de la planète",
        image: .dragon,
        propositions: [
            "La baisse de luminosité de l’étoile lors du passage de la planète",
            "La couleur de la Lune",
            "Le bruit des météorites",
            "La taille des anneaux de Saturne"
        ]
    ),
    Question(
        questionTitle: "Comment appelle-t-on cette méthode de détection par baisse de lumière ?",
        answer: "La méthode des transits",
        image: .dragon,
        propositions: ["La méthode des transits", "La méthode des anneaux", "La méthode des éclipses", "La méthode des comètes"]
    ),
    Question(
        questionTitle: "Pourquoi s’intéresse-t-on beaucoup aux exoplanètes ?",
        answer: "Pour comprendre la diversité des systèmes planétaires et chercher des mondes habitables",
        image: .dragon,
        propositions: [
            "Pour comprendre la diversité des systèmes planétaires et chercher des mondes habitables",
            "Pour changer la couleur du ciel",
            "Pour ralentir le Soleil",
            "Pour faire disparaître les galaxies"
        ]
    )
]

// =====================
// LEVEL 4 — COSMOLOGIE & RELATIVITÉ (Plus exigeant, toujours grand public)
// =====================

let l4_relativiteSimplifiee: [Question] = [
    Question(
        questionTitle: "La relativité d’Einstein explique notamment que…",
        answer: "Le temps et l’espace peuvent être affectés par la vitesse et la gravité",
        image: .dragon,
        propositions: [
            "Le temps et l’espace peuvent être affectés par la vitesse et la gravité",
            "La gravité n’existe pas",
            "Les planètes sont immobiles",
            "La lumière s’arrête parfois"
        ]
    ),
    Question(
        questionTitle: "Dans l’idée de la relativité générale, la gravité ressemble à…",
        answer: "Une courbure de l’espace-temps",
        image: .dragon,
        propositions: [
            "Une courbure de l’espace-temps",
            "Un vent qui pousse les objets",
            "Un champ électrique uniquement",
            "Une poussière invisible"
        ]
    ),
    Question(
        questionTitle: "Pourquoi les GPS ont-ils besoin de corrections relativistes ?",
        answer: "Parce que le temps ne s’écoule pas exactement pareil pour les satellites et au sol",
        image: .dragon,
        propositions: [
            "Parce que le temps ne s’écoule pas exactement pareil pour les satellites et au sol",
            "Parce que la Terre est plate",
            "Parce que la lumière n’atteint pas l’espace",
            "Parce que les satellites changent de couleur"
        ]
    ),
    Question(
        questionTitle: "La vitesse de la lumière dans le vide est…",
        answer: "Une vitesse limite (pour l’information)",
        image: .dragon,
        propositions: [
            "Une vitesse limite (pour l’information)",
            "Une vitesse qui varie au hasard",
            "Plus lente que le son",
            "Égale à la vitesse des fusées"
        ]
    ),
    Question(
        questionTitle: "Comment appelle-t-on le phénomène où la lumière est déviée par la gravité d’un objet massif ?",
        answer: "La lentille gravitationnelle",
        image: .dragon,
        propositions: [
            "La lentille gravitationnelle",
            "L’éclipse solaire",
            "La photosynthèse",
            "Le vent solaire"
        ]
    )
]

let l4_bigBangEtExpansion: [Question] = [
    Question(
        questionTitle: "Le Big Bang désigne…",
        answer: "Le modèle expliquant l’expansion de l’Univers depuis un état très dense et chaud",
        image: .dragon,
        propositions: [
            "Le modèle expliquant l’expansion de l’Univers depuis un état très dense et chaud",
            "L’explosion du Soleil",
            "La formation de la Terre",
            "La collision de deux planètes"
        ]
    ),
    Question(
        questionTitle: "Que signifie « l’Univers est en expansion » ?",
        answer: "Les distances entre galaxies augmentent globalement",
        image: .dragon,
        propositions: [
            "Les distances entre galaxies augmentent globalement",
            "Les planètes grossissent",
            "Les étoiles deviennent plus proches",
            "La gravité disparaît"
        ]
    ),
    Question(
        questionTitle: "Quel indice célèbre montre que l’Univers est en expansion ?",
        answer: "Le décalage vers le rouge (redshift) des galaxies",
        image: .dragon,
        propositions: [
            "Le décalage vers le rouge (redshift) des galaxies",
            "La couleur des océans",
            "Les phases de la Lune",
            "Les anneaux de Saturne"
        ]
    ),
    Question(
        questionTitle: "Qu’est-ce que le « fond diffus cosmologique » (CMB), en très simple ?",
        answer: "Une lumière ancienne, vestige de l’Univers primordial",
        image: .dragon,
        propositions: [
            "Une lumière ancienne, vestige de l’Univers primordial",
            "Une comète très froide",
            "Une ceinture d’astéroïdes",
            "Un nuage d’air autour de la Terre"
        ]
    ),
    Question(
        questionTitle: "Quand on dit que l’Univers a environ 13,8 milliards d’années, cela vient de…",
        answer: "Mesures et modèles cosmologiques (expansion, CMB, etc.)",
        image: .dragon,
        propositions: [
            "Mesures et modèles cosmologiques (expansion, CMB, etc.)",
            "Un calendrier antique",
            "La longueur des jours terrestres",
            "La taille de Jupiter"
        ]
    )
]

let l4_matiereNoireEnergieNoire: [Question] = [
    Question(
        questionTitle: "Pourquoi parle-t-on de « matière noire » ?",
        answer: "On observe ses effets gravitationnels sans la voir directement",
        image: .dragon,
        propositions: [
            "On observe ses effets gravitationnels sans la voir directement",
            "Parce qu’elle est faite de charbon",
            "Parce qu’elle n’existe que la nuit",
            "Parce qu’elle est au centre de la Terre"
        ]
    ),
    Question(
        questionTitle: "Quel indice a mené à l’idée de matière noire dans les galaxies ?",
        answer: "La vitesse de rotation des étoiles autour du centre galactique",
        image: .dragon,
        propositions: [
            "La vitesse de rotation des étoiles autour du centre galactique",
            "Les phases de Vénus",
            "La couleur de Mars",
            "La taille des comètes"
        ]
    ),
    Question(
        questionTitle: "L’« énergie noire » est souvent évoquée pour expliquer…",
        answer: "L’accélération de l’expansion de l’Univers",
        image: .dragon,
        propositions: [
            "L’accélération de l’expansion de l’Univers",
            "La formation des anneaux de Saturne",
            "La rotation de la Terre",
            "La météo sur Mars"
        ]
    ),
    Question(
        questionTitle: "À propos de matière noire et d’énergie noire, on peut dire que…",
        answer: "Elles restent parmi les grandes inconnues de la cosmologie",
        image: .dragon,
        propositions: [
            "Elles restent parmi les grandes inconnues de la cosmologie",
            "On les a déjà vues au télescope à l’œil nu",
            "Elles sont identiques à l’oxygène",
            "Elles n’ont aucun lien avec la gravité"
        ]
    ),
    Question(
        questionTitle: "Pourquoi ces sujets sont-ils difficiles à étudier ?",
        answer: "Parce qu’ils ne se détectent pas facilement par la lumière",
        image: .dragon,
        propositions: [
            "Parce qu’ils ne se détectent pas facilement par la lumière",
            "Parce que les planètes sont trop petites",
            "Parce que le Soleil cache tout",
            "Parce que les télescopes ne fonctionnent pas dans l’espace"
        ]
    )
]

let l4_trousNoirsIntro: [Question] = [
    Question(
        questionTitle: "Un trou noir est…",
        answer: "Une région où la gravité est si forte que la lumière ne peut pas s’échapper",
        image: .dragon,
        propositions: [
            "Une région où la gravité est si forte que la lumière ne peut pas s’échapper",
            "Un trou dans l’atmosphère",
            "Une planète invisible",
            "Une comète très lente"
        ]
    ),
    Question(
        questionTitle: "Comment appelle-t-on la limite à partir de laquelle rien ne peut s’échapper d’un trou noir ?",
        answer: "L’horizon des événements",
        image: .dragon,
        propositions: [
            "L’horizon des événements",
            "La ceinture d’astéroïdes",
            "La stratosphère",
            "La couronne solaire"
        ]
    ),
    Question(
        questionTitle: "D’où viennent souvent les trous noirs stellaires (les plus « simples ») ?",
        answer: "De l’effondrement d’une étoile massive en fin de vie",
        image: .dragon,
        propositions: [
            "De l’effondrement d’une étoile massive en fin de vie",
            "De la fusion de deux planètes",
            "D’une comète qui gèle",
            "D’un satellite artificiel perdu"
        ]
    ),
    Question(
        questionTitle: "Peut-on « voir » un trou noir directement en lumière visible ?",
        answer: "Non, on l’infère via ses effets et ce qui l’entoure",
        image: .dragon,
        propositions: [
            "Non, on l’infère via ses effets et ce qui l’entoure",
            "Oui, il brille plus que le Soleil",
            "Oui, il est bleu vif",
            "Oui, mais seulement la nuit"
        ]
    ),
    Question(
        questionTitle: "Qu’observe-t-on souvent autour d’un trou noir actif ?",
        answer: "Un disque de matière très chaude",
        image: .dragon,
        propositions: [
            "Un disque de matière très chaude",
            "Des anneaux comme Saturne",
            "Une mer d’eau",
            "Une atmosphère respirable"
        ]
    )
]

// =====================
// LEVEL 5 — FRONTIÈRES (Exoplanètes, astrobiologie, questions « modernes »)
// =====================

let l5_exoplanetesEtVie: [Question] = [
    Question(
        questionTitle: "Qu’appelle-t-on la « zone habitable » autour d’une étoile (en simplifiant) ?",
        answer: "La zone où l’eau liquide pourrait exister à la surface d’une planète",
        image: .dragon,
        propositions: [
            "La zone où l’eau liquide pourrait exister à la surface d’une planète",
            "La zone où les comètes se forment",
            "La zone sans gravité",
            "La zone où la lumière s’arrête"
        ]
    ),
    Question(
        questionTitle: "Pourquoi une planète trop proche de son étoile est souvent moins favorable à l’eau liquide ?",
        answer: "Il peut y faire trop chaud",
        image: .venus,
        propositions: ["Il peut y faire trop chaud", "Elle perd sa gravité", "Elle devient une comète", "Elle devient une galaxie"]
    ),
    Question(
        questionTitle: "Quel indice pourrait suggérer une atmosphère intéressante sur une exoplanète ?",
        answer: "Des signatures de gaz détectées par spectre",
        image: .dragon,
        propositions: [
            "Des signatures de gaz détectées par spectre",
            "La présence d’anneaux visibles à l’œil nu",
            "Une queue de comète",
            "La couleur de la Terre"
        ]
    ),
    Question(
        questionTitle: "Pourquoi étudier les atmosphères d’exoplanètes est-il important ?",
        answer: "Cela aide à comprendre leur climat et une possible habitabilité",
        image: .dragon,
        propositions: [
            "Cela aide à comprendre leur climat et une possible habitabilité",
            "Cela sert à ralentir les fusées",
            "Cela permet de fabriquer des étoiles",
            "Cela empêche les éclipses"
        ]
    ),
    Question(
        questionTitle: "Qu’est-ce qu’un « biosignature » (idée générale) ?",
        answer: "Un indice possible d’activité du vivant",
        image: .dragon,
        propositions: [
            "Un indice possible d’activité du vivant",
            "Un type d’astéroïde",
            "Une météo sur Jupiter",
            "Un anneau de Saturne"
        ]
    )
]

let l5_trousNoirsEtOndesGravitationnelles: [Question] = [
    Question(
        questionTitle: "Qu’est-ce qu’une onde gravitationnelle (simplifié) ?",
        answer: "Une ondulation de l’espace-temps produite par des événements très énergétiques",
        image: .dragon,
        propositions: [
            "Une ondulation de l’espace-temps produite par des événements très énergétiques",
            "Un vent solaire très fort",
            "Une nouvelle planète",
            "Une pluie de météores"
        ]
    ),
    Question(
        questionTitle: "Quels événements peuvent produire des ondes gravitationnelles détectables ?",
        answer: "La fusion de trous noirs ou d’étoiles à neutrons",
        image: .dragon,
        propositions: [
            "La fusion de trous noirs ou d’étoiles à neutrons",
            "Les phases de la Lune",
            "La rotation de Mars",
            "Les anneaux de Saturne"
        ]
    ),
    Question(
        questionTitle: "Pourquoi les ondes gravitationnelles sont-elles une nouvelle façon d’observer l’Univers ?",
        answer: "Elles complètent la lumière : on observe des phénomènes autrement invisibles",
        image: .dragon,
        propositions: [
            "Elles complètent la lumière : on observe des phénomènes autrement invisibles",
            "Elles remplacent les télescopes",
            "Elles rendent la lumière plus lente",
            "Elles changent la couleur des planètes"
        ]
    ),
    Question(
        questionTitle: "Quand on détecte une onde gravitationnelle, on mesure…",
        answer: "Une très petite variation de distance due au passage de l’onde",
        image: .dragon,
        propositions: [
            "Une très petite variation de distance due au passage de l’onde",
            "La température du Soleil",
            "La taille de Jupiter",
            "La pression de l’air terrestre"
        ]
    ),
    Question(
        questionTitle: "Que nous apprennent ces signaux sur les trous noirs ?",
        answer: "Leurs masses et la manière dont ils fusionnent",
        image: .dragon,
        propositions: [
            "Leurs masses et la manière dont ils fusionnent",
            "La météo autour de Saturne",
            "Le nombre de lunes de Mars",
            "La couleur de Mercure"
        ]
    )
]

let l5_originesEtElements: [Question] = [
    Question(
        questionTitle: "D’où viennent la plupart des éléments lourds (au-delà de l’hélium) ?",
        answer: "Des étoiles et de leurs explosions (supernovas, etc.)",
        image: .dragon,
        propositions: [
            "Des étoiles et de leurs explosions (supernovas, etc.)",
            "Uniquement de la Terre",
            "Uniquement des comètes",
            "Du vent sur Mars"
        ]
    ),
    Question(
        questionTitle: "Pourquoi dit-on parfois que « nous sommes faits de poussières d’étoiles » ?",
        answer: "Les éléments chimiques de notre corps ont été fabriqués dans des étoiles",
        image: .dragon,
        propositions: [
            "Les éléments chimiques de notre corps ont été fabriqués dans des étoiles",
            "Parce que la Terre est une étoile",
            "Parce que l’air est du métal",
            "Parce que les planètes brillent"
        ]
    ),
    Question(
        questionTitle: "Qu’est-ce que la nucléosynthèse (idée générale) ?",
        answer: "La fabrication de nouveaux noyaux atomiques (éléments) dans certains environnements",
        image: .dragon,
        propositions: [
            "La fabrication de nouveaux noyaux atomiques (éléments) dans certains environnements",
            "Le gel des comètes",
            "Le mouvement des anneaux",
            "La formation des océans"
        ]
    ),
    Question(
        questionTitle: "Pourquoi l’hydrogène est-il l’élément le plus abondant de l’Univers ?",
        answer: "Il s’est formé très tôt, en grande quantité, dans l’Univers primordial",
        image: .dragon,
        propositions: [
            "Il s’est formé très tôt, en grande quantité, dans l’Univers primordial",
            "Parce qu’il pleut de l’hydrogène sur Terre",
            "Parce qu’il est fabriqué par les planètes",
            "Parce que les comètes sont des étoiles"
        ]
    ),
    Question(
        questionTitle: "À quoi sert l’étude de ces origines (éléments, étoiles) ?",
        answer: "À comprendre l’histoire de la matière et la formation des systèmes planétaires",
        image: .dragon,
        propositions: [
            "À comprendre l’histoire de la matière et la formation des systèmes planétaires",
            "À accélérer les saisons",
            "À réduire la gravité terrestre",
            "À arrêter la rotation de la Terre"
        ]
    )
]

let l5_grandsMysteres: [Question] = [
    Question(
        questionTitle: "Pourquoi l’Univers semble-t-il « vide » alors qu’il contient énormément de matière et d’énergie ?",
        answer: "Parce que les distances entre objets sont immenses",
        image: .dragon,
        propositions: [
            "Parce que les distances entre objets sont immenses",
            "Parce que les galaxies sont minuscules",
            "Parce que la lumière n’existe pas",
            "Parce que la gravité est une illusion"
        ]
    ),
    Question(
        questionTitle: "Qu’est-ce qu’un « modèle » scientifique, en cosmologie ?",
        answer: "Une description mathématique/testable qui explique des observations",
        image: .dragon,
        propositions: [
            "Une description mathématique/testable qui explique des observations",
            "Une opinion personnelle",
            "Un dessin artistique uniquement",
            "Une rumeur"
        ]
    ),
    Question(
        questionTitle: "Pourquoi plusieurs méthodes d’observation sont-elles importantes en astronomie ?",
        answer: "Elles se complètent (lumière, ondes radio, gravitationnelles, etc.)",
        image: .dragon,
        propositions: [
            "Elles se complètent (lumière, ondes radio, gravitationnelles, etc.)",
            "Parce que les télescopes sont inutiles",
            "Parce que la Terre change de place",
            "Parce que la Lune cache tout"
        ]
    ),
    Question(
        questionTitle: "Quel énoncé est le plus juste à propos de « ce qu’on ne sait pas encore » en cosmologie ?",
        answer: "Les inconnues sont normales : elles guident la recherche",
        image: .dragon,
        propositions: [
            "Les inconnues sont normales : elles guident la recherche",
            "On sait déjà absolument tout",
            "Les inconnues prouvent que la science est fausse",
            "On ne peut rien mesurer dans l’espace"
        ]
    ),
    Question(
        questionTitle: "Pourquoi parler de « probabilités » et d’« incertitudes » en sciences ?",
        answer: "Parce que toute mesure a une marge d’erreur, et on la quantifie",
        image: .dragon,
        propositions: [
            "Parce que les scientifiques devinent au hasard",
            "Parce que la gravité empêche les mesures",
            "Parce que la lumière est toujours fausse",
            "Parce que les planètes changent de taille"
        ]
    )
]

// MARK: - QUIZZES DATA (5 niveaux, 4 quizz par niveau)

var quizzes: [Quiz] = [
    
    // =====================
    // LEVEL 1
    // =====================
    Quiz(
        title: "Planètes telluriques",
        level: 1,
        theme: "Système solaire — Bases",
        image: .mars,
        questions: l1_planetesTelluriques,
        
    ),
    Quiz(
        title: "Ordre & tailles",
        level: 1,
        theme: "Système solaire — Bases",
        image: .earth,
        questions: l1_ordresEtTailles
    ),
    Quiz(
        title: "Géantes & anneaux",
        level: 1,
        theme: "Système solaire — Bases",
        image: .saturn,
        questions: l1_planetesGeantes
    ),
    Quiz(
        title: "Soleil & repères",
        level: 1,
        theme: "Système solaire — Bases",
        image: .mercury,
        questions: l1_leSoleilEtNotrePlace
    ),
    
    // =====================
    // LEVEL 2
    // =====================
    Quiz(
        title: "La Lune",
        level: 2,
        theme: "Observation & exploration",
        image: .apolloCsm,
        questions: l2_laLune
    ),
    Quiz(
        title: "Missions spatiales",
        level: 2,
        theme: "Observation & exploration",
        image: .dragon,
        questions: l2_missionsSpatiales
    ),
    Quiz(
        title: "Météores & astéroïdes",
        level: 2,
        theme: "Observation & exploration",
        image: .mars,
        questions: l2_meteoresEtAsteroides
    ),
    Quiz(
        title: "Mouvement & gravité",
        level: 2,
        theme: "Observation & exploration",
        image: .earth,
        questions: l2_mouvementEtGravite
    ),
    
    // =====================
    // LEVEL 3
    // =====================
    Quiz(
        title: "Les étoiles",
        level: 3,
        theme: "Astronomie — Étoiles & galaxies",
        image: .dragon,
        questions: l3_lesEtoiles
    ),
    Quiz(
        title: "Les galaxies",
        level: 3,
        theme: "Astronomie — Étoiles & galaxies",
        image: .dragon,
        questions: l3_galaxies
    ),
    Quiz(
        title: "Lumière & distances",
        level: 3,
        theme: "Astronomie — Étoiles & galaxies",
        image: .dragon,
        questions: l3_lumiereEtDistances
    ),
    Quiz(
        title: "Exoplanètes (intro)",
        level: 3,
        theme: "Astronomie — Étoiles & galaxies",
        image: .neptune,
        questions: l3_exoplanetesIntro
    ),
    
    // =====================
    // LEVEL 4
    // =====================
    Quiz(
        title: "Relativité (simple)",
        level: 4,
        theme: "Cosmologie — Idées clés",
        image: .dragon,
        questions: l4_relativiteSimplifiee
    ),
    Quiz(
        title: "Big Bang & expansion",
        level: 4,
        theme: "Cosmologie — Idées clés",
        image: .dragon,
        questions: l4_bigBangEtExpansion
    ),
    Quiz(
        title: "Matière & énergie noires",
        level: 4,
        theme: "Cosmologie — Idées clés",
        image: .dragon,
        questions: l4_matiereNoireEnergieNoire
    ),
    Quiz(
        title: "Trous noirs (intro)",
        level: 4,
        theme: "Cosmologie — Idées clés",
        image: .jupiter,
        questions: l4_trousNoirsIntro
    ),
    
    // =====================
    // LEVEL 5
    // =====================
    Quiz(
        title: "Exoplanètes & vie",
        level: 5,
        theme: "Frontières — Questions modernes",
        image: .earth,
        questions: l5_exoplanetesEtVie
    ),
    Quiz(
        title: "Ondes gravitationnelles",
        level: 5,
        theme: "Frontières — Questions modernes",
        image: .dragon,
        questions: l5_trousNoirsEtOndesGravitationnelles
    ),
    Quiz(
        title: "Origines des éléments",
        level: 5,
        theme: "Frontières — Questions modernes",
        image: .saturn,
        questions: l5_originesEtElements
    ),
    Quiz(
        title: "Grands mystères",
        level: 5,
        theme: "Frontières — Questions modernes",
        image: .neptune,
        questions: l5_grandsMysteres
    )
]

// MARK: - Convenience (optional)

var firstQuiz: Quiz = quizzes.first ?? Quiz(
    title: "Quiz par défaut",
    level: 1,
    theme: "Système solaire — Bases",
    image: .mars,
    questions: [
        Question(
            questionTitle: "Combien y a-t-il de planètes dans le système solaire ?",
            answer: "8",
            image: .earth,
            propositions: ["7", "8", "9", "10"]
        )
    ]
)
