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
    var hint: String
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
        ],
        hint: "Ce sont les 4 planètes rocheuses les plus proches du Soleil 🪨"
    ),
    Question(
        questionTitle: "Quelle est la planète la plus proche du Soleil ?",
        answer: "Mercure",
        image: .mercury,
        propositions: [
            "Mercure",
            "Vénus",
            "Terre",
            "Mars"
        ],
        hint: "C'est aussi la plus petite et la plus rapide 🌞"
    ),
    Question(
        questionTitle: "Quelle planète a une atmosphère très riche en dioxyde de carbone et extrêmement chaude ?",
        answer: "Vénus",
        image: .venus,
        propositions: [
            "Vénus",
            "Mars",
            "Mercure",
            "Neptune"
        ],
        hint: "On l'appelle parfois la jumelle de la Terre 🔥"
    ),
    Question(
        questionTitle: "Quelle planète possède une grande quantité d'eau liquide à sa surface ?",
        answer: "Terre",
        image: .earth,
        propositions: [
            "Terre",
            "Mars",
            "Vénus",
            "Mercure"
        ],
        hint: "C'est notre planète bleue 🌊"
    ),
    Question(
        questionTitle: "Quelle planète est surnommée « la planète rouge » ?",
        answer: "Mars",
        image: .mars,
        propositions: [
            "Mars",
            "Vénus",
            "Mercure",
            "Saturne"
        ],
        hint: "Sa couleur vient de l'oxyde de fer à sa surface 🔴"
    ),
    Question(
        questionTitle: "Quelle planète tellurique a le plus de volcans actifs ?",
        answer: "Terre",
        image: .earth,
        propositions: [
            "Terre",
            "Mars",
            "Vénus",
            "Mercure"
        ],
        hint: "Elle a encore une activité géologique intense 🌋"
    ),
    Question(
        questionTitle: "Quelle planète tellurique est la plus dense ?",
        answer: "Terre",
        image: .earth,
        propositions: [
            "Terre",
            "Mercure",
            "Mars",
            "Vénus"
        ],
        hint: "Son noyau de fer est massif ⚡"
    ),
    Question(
        questionTitle: "Quelle planète tellurique est la plus chaude à sa surface ?",
        answer: "Vénus",
        image: .venus,
        propositions: [
            "Vénus",
            "Mercure",
            "Mars",
            "Terre"
        ],
        hint: "Son effet de serre est extrême, plus de 460°C ! 🥵"
    ),
    Question(
        questionTitle: "Quelle planète tellurique a le plus grand nombre de lunes ?",
        answer: "Mars",
        image: .mars,
        propositions: [
            "Mars",
            "Terre",
            "Vénus",
            "Mercure"
        ],
        hint: "Elle en a deux : Phobos et Deimos 🌙🌙"
    ),
    Question(
        questionTitle: "Quelle planète tellurique a un champ magnétique significatif ?",
        answer: "Terre",
        image: .earth,
        propositions: [
            "Terre",
            "Mercure",
            "Mars",
            "Vénus"
        ],
        hint: "Ce bouclier nous protège des radiations solaires 🧲"
    )
]

let l1_ordresEtTailles: [Question] = [
    Question(
        questionTitle: "Combien y a-t-il de planètes dans le système solaire ?",
        answer: "8",
        image: .earth,
        propositions: [
            "7",
            "8",
            "9",
            "10"
        ],
        hint: "Pluton n'est plus considérée comme une planète depuis 2006 🪐"
    ),
    Question(
        questionTitle: "Quelle est la plus grande planète du système solaire ?",
        answer: "Jupiter",
        image: .jupiter,
        propositions: [
            "Mars",
            "Jupiter",
            "Saturne",
            "Terre"
        ],
        hint: "Cette géante gazeuse pourrait contenir toutes les autres planètes ! 🌟"
    ),
    Question(
        questionTitle: "Quel est l'ordre correct des quatre premières planètes depuis le Soleil ?",
        answer: "Mercure, Vénus, Terre, Mars",
        image: .mercury,
        propositions: [
            "Mercure, Vénus, Terre, Mars",
            "Vénus, Mercure, Terre, Mars",
            "Mercure, Terre, Vénus, Mars",
            "Terre, Vénus, Mercure, Mars"
        ],
        hint: "Pense à l'ordre en partant du Soleil vers l'extérieur ☀️"
    ),
    Question(
        questionTitle: "Quelle planète est la plus éloignée du Soleil ?",
        answer: "Neptune",
        image: .neptune,
        propositions: [
            "Uranus",
            "Neptune",
            "Saturne",
            "Jupiter"
        ],
        hint: "C'est la géante de glace la plus lointaine 🧊"
    ),
    Question(
        questionTitle: "Quelle planète est connue pour ses anneaux très visibles ?",
        answer: "Saturne",
        image: .saturn,
        propositions: [
            "Saturne",
            "Mars",
            "Vénus",
            "Mercure"
        ],
        hint: "Ses anneaux sont faits de glace et de roche 💍"
    ),
    Question(
        questionTitle: "Quelle planète a le diamètre le plus petit ?",
        answer: "Mercure",
        image: .mercury,
        propositions: [
            "Mercure",
            "Mars",
            "Vénus",
            "Pluton"
        ],
        hint: "C'est aussi la plus proche du Soleil 🔍"
    ),
    Question(
        questionTitle: "Quelle planète a le volume le plus grand ?",
        answer: "Jupiter",
        image: .jupiter,
        propositions: [
            "Jupiter",
            "Saturne",
            "Neptune",
            "Terre"
        ],
        hint: "Elle est si grande qu'on y logerait 1300 Terres ! 📦"
    ),
    Question(
        questionTitle: "Quelle planète est plus massive : Uranus ou Neptune ?",
        answer: "Neptune",
        image: .neptune,
        propositions: [
            "Neptune",
            "Uranus",
            "Saturne",
            "Jupiter"
        ],
        hint: "Malgré sa taille plus petite, elle est plus dense ⚖️"
    ),
    Question(
        questionTitle: "Quelles planètes ont une rotation très rapide sur elles-mêmes ?",
        answer: "Jupiter et Saturne",
        image: .jupiter,
        propositions: [
            "Jupiter et Saturne",
            "Mars et Terre",
            "Mercure et Vénus",
            "Neptune et Uranus"
        ],
        hint: "Ce sont les deux plus grosses planètes 🌀"
    ),
    Question(
        questionTitle: "Quelle planète a la durée d'une journée la plus longue ?",
        answer: "Vénus",
        image: .venus,
        propositions: [
            "Vénus",
            "Mercure",
            "Mars",
            "Jupiter"
        ],
        hint: "Elle tourne très lentement sur elle-même, à l'envers en plus ! ⏳"
    )
]

let l1_planetesGeantes: [Question] = [
    Question(
        questionTitle: "Comment appelle-t-on Jupiter et Saturne, principalement composées d'hydrogène et d'hélium ?",
        answer: "Des géantes gazeuses",
        image: .jupiter,
        propositions: [
            "Des géantes gazeuses",
            "Des planètes telluriques",
            "Des planètes naines",
            "Des satellites naturels"
        ],
        hint: "Elles n'ont pas de surface solide 💨"
    ),
    Question(
        questionTitle: "Quelle planète est la plus grande des géantes gazeuses ?",
        answer: "Jupiter",
        image: .jupiter,
        propositions: [
            "Jupiter",
            "Saturne",
            "Uranus",
            "Neptune"
        ],
        hint: "C'est aussi la plus grande planète du système solaire 👑"
    ),
    Question(
        questionTitle: "Quelle planète est célèbre pour ses anneaux composés de glace et de roche ?",
        answer: "Saturne",
        image: .saturn,
        propositions: [
            "Saturne",
            "Jupiter",
            "Uranus",
            "Neptune"
        ],
        hint: "Ses anneaux sont visibles même avec un petit télescope 💍"
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
        ],
        hint: "Elles contiennent beaucoup d'eau, d'ammoniac et de méthane gelés 🧊"
    ),
    Question(
        questionTitle: "Quelle planète est connue pour sa couleur bleu intense liée notamment au méthane ?",
        answer: "Neptune"
        , image: .neptune,
        propositions: [
            "Neptune",
            "Mars",
            "Mercure",
            "Vénus"
        ],
        hint: "C'est la planète la plus éloignée du Soleil 💙"
    ),
    Question(
        questionTitle: "Quelle planète géante a le vent le plus rapide ?",
        answer: "Neptune",
        image: .neptune,
        propositions: [
            "Neptune",
            "Jupiter",
            "Saturne",
            "Uranus"
        ],
        hint: "Ses vents peuvent atteindre 2000 km/h ! 🌬️"
    ),
    Question(
        questionTitle: "Quelle planète géante a un champ magnétique le plus puissant ?",
        answer: "Jupiter",
        image: .jupiter,
        propositions: [
            "Jupiter",
            "Saturne",
            "Uranus",
            "Neptune"
        ],
        hint: "Sa magnétosphère est la plus grande structure du système solaire 🧲"
    ),
    Question(
        questionTitle: "Quelle planète géante a la plus grande densité parmi elles ?",
        answer: "Neptune",
        image: .neptune,
        propositions: [
            "Neptune",
            "Jupiter",
            "Saturne",
            "Uranus"
        ],
        hint: "Elle est plus compacte malgré sa taille ⚖️"
    ),
    Question(
        questionTitle: "Quelle planète géante est inclinée presque sur le côté ?",
        answer: "Uranus",
        image: .uranus,
        propositions: [
            "Uranus",
            "Neptune",
            "Saturne",
            "Jupiter"
        ],
        hint: "Elle roule sur son orbite comme une bille 🎱"
    ),
    Question(
        questionTitle: "Quelle planète géante a été visitée en premier par une sonde spatiale ?",
        answer: "Jupiter",
        image: .jupiter,
        propositions: [
            "Jupiter",
            "Saturne",
            "Uranus",
            "Neptune"
        ],
        hint: "Pioneer 10 y est allée en 1973 🚀"
    )
]

let l1_leSoleilEtNotrePlace: [Question] = [
    Question(
        questionTitle: "Quelle étoile est au centre du système solaire ?",
        answer: "Le Soleil",
        image: .earth,
        propositions: [
            "Sirius",
            "Polaris",
            "Le Soleil",
            "Alpha Centauri"
        ],
        hint: "C'est notre étoile, celle qui nous éclaire chaque jour ☀️"
    ),
    Question(
        questionTitle: "Qu'est-ce qu'une orbite (dans le système solaire) ?",
        answer: "La trajectoire d'un objet autour d'un autre",
        image: .apolloCsm,
        propositions: [
            "La trajectoire d'un objet autour d'un autre",
            "La surface d'une planète",
            "Un type d'astéroïde",
            "Une couche de l'atmosphère"
        ],
        hint: "C'est le chemin que suit une planète autour du Soleil 🔄"
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
        ],
        hint: "C'est la force qui attire les objets entre eux 🍎"
    ),
    Question(
        questionTitle: "Comment s'appelle notre galaxie ?",
        answer: "La Voie Lactée",
        image: .dragon,
        propositions: [
            "Andromède",
            "Orion",
            "La Voie Lactée",
            "Centaurus"
        ],
        hint: "Son nom évoque un chemin de lait dans le ciel 🌌"
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
        ],
        hint: "C'est la distance parcourue par la lumière en un an 📏"
    ),
    Question(
        questionTitle: "Quelle est la principale source d'énergie du Soleil ?",
        answer: "La fusion nucléaire",
        image: .dragon,
        propositions: [
            "La fusion nucléaire",
            "La combustion",
            "Les réactions chimiques",
            "Le vent solaire"
        ],
        hint: "L'hydrogène se transforme en hélium au cœur du Soleil ⚛️"
    ),
    Question(
        questionTitle: "Quelle planète a le mouvement orbital le plus rapide autour du Soleil ?",
        answer: "Mercure",
        image: .mercury,
        propositions: [
            "Mercure",
            "Venus",
            "Terre",
            "Mars"
        ],
        hint: "Plus on est proche du Soleil, plus on va vite ! 🏃"
    ),
    Question(
        questionTitle: "Quel est le type de lumière principalement émis par le Soleil ?",
        answer: "Lumière visible et rayons UV",
        image: .dragon,
        propositions: [
            "Lumière visible et rayons UV",
            "Rayons X uniquement",
            "Infrarouge uniquement",
            "Micro-ondes"
        ],
        hint: "C'est ce qui nous permet de voir et ce qui bronze notre peau 😎"
    ),
    Question(
        questionTitle: "Quelle est l'étoile la plus proche après le Soleil ?",
        answer: "Proxima Centauri",
        image: .dragon,
        propositions: [
            "Proxima Centauri",
            "Sirius",
            "Alpha Centauri A",
            "Polaris"
        ],
        hint: "Elle fait partie du système Alpha Centauri, à 4,2 années-lumière ✨"
    ),
    Question(
        questionTitle: "Quelle planète reçoit le plus d'énergie solaire ?",
        answer: "Mercure",
        image: .mercury,
        propositions: [
            "Mercure",
            "Vénus",
            "Terre",
            "Mars"
        ],
        hint: "C'est la planète la plus proche du Soleil 🔥"
    )
]
// =====================
// LEVEL 2 — LUNE & EXPLORATION (Comprendre et situer)
// =====================

let l2_planetesInterieures: [Question] = [
    Question(
        questionTitle: "Quelle est la planète la plus proche du Soleil ?",
        answer: "Mercure",
        image: .mercury,
        propositions: [
            "Mercure",
            "Vénus",
            "Terre",
            "Mars"
        ],
        hint: "C'est aussi la plus petite des planètes 🌞"
    ),
    Question(
        questionTitle: "Quelle planète est surnommée la planète rouge ?",
        answer: "Mars",
        image: .mars,
        propositions: [
            "Mars",
            "Jupiter",
            "Vénus",
            "Mercure"
        ],
        hint: "L'oxyde de fer lui donne sa couleur rouille 🔴"
    ),
    Question(
        questionTitle: "Quelle planète a une atmosphère dense et toxique ?",
        answer: "Vénus",
        image: .venus,
        propositions: [
            "Vénus",
            "Mercure",
            "Mars",
            "Terre"
        ],
        hint: "Ses nuages sont faits d'acide sulfurique ☠️"
    ),
    Question(
        questionTitle: "Quelle est la plus grande planète tellurique ?",
        answer: "Terre",
        image: .earth,
        propositions: [
            "Terre",
            "Mercure",
            "Mars",
            "Vénus"
        ],
        hint: "C'est notre maison, la planète bleue 🌍"
    ),
    Question(
        questionTitle: "Quelle planète est la plus chaude du système solaire ?",
        answer: "Vénus",
        image: .venus,
        propositions: [
            "Vénus",
            "Mercure",
            "Mars",
            "Terre"
        ],
        hint: "Son effet de serre la rend plus chaude que Mercure ! 🥵"
    ),
    Question(
        questionTitle: "Mercure n'a presque pas d'… ?",
        answer: "Atmosphère",
        image: .mercury,
        propositions: [
            "Atmosphère",
            "Océans",
            "Volcans",
            "Lunes"
        ],
        hint: "Elle est trop petite pour retenir les gaz 💨"
    ),
    Question(
        questionTitle: "Mars possède quel phénomène visible ?",
        answer: "Calottes polaires",
        image: .mars,
        propositions: [
            "Calottes polaires",
            "Anneaux",
            "Tempêtes de sable",
            "Fosses océaniques"
        ],
        hint: "On voit de la glace à ses pôles, comme sur Terre ❄️"
    ),
    Question(
        questionTitle: "Quelle planète a la journée la plus longue parmi les intérieures ?",
        answer: "Vénus",
        image: .venus,
        propositions: [
            "Vénus",
            "Terre",
            "Mars",
            "Mercure"
        ],
        hint: "Elle tourne très lentement et à l'envers ⏳"
    ),
    Question(
        questionTitle: "Quelle planète a le plus de volcans ?",
        answer: "Mars",
        image: .mars,
        propositions: [
            "Mars",
            "Vénus",
            "Terre",
            "Mercure"
        ],
        hint: "Olympus Mons est le plus grand volcan du système solaire 🌋"
    ),
    Question(
        questionTitle: "Terre est la seule planète à posséder ?",
        answer: "Vie",
        image: .earth,
        propositions: [
            "Vie",
            "Anneaux",
            "Anneaux et lunes",
            "Atmosphère de CO2"
        ],
        hint: "Du moins, c'est la seule où on en a trouvé... 🌱"
    )
]

// Sublevel 2: Géantes gazeuses et glaciaires
let l2_geantes: [Question] = [
    Question(
        questionTitle: "Quelle est la plus grande planète du système solaire ?",
        answer: "Jupiter",
        image: .jupiter,
        propositions: [
            "Jupiter",
            "Saturne",
            "Uranus",
            "Neptune"
        ],
        hint: "Elle est si grande qu'on pourrait y mettre 1300 Terres ! 🌟"
    ),
    Question(
        questionTitle: "Quelle planète est célèbre pour ses anneaux ?",
        answer: "Saturne",
        image: .saturn,
        propositions: [
            "Saturne",
            "Jupiter",
            "Uranus",
            "Neptune"
        ],
        hint: "Ses anneaux sont visibles avec un petit télescope 💍"
    ),
    Question(
        questionTitle: "Uranus est inclinée de façon ?",
        answer: "Extrêmement",
        image: .uranus,
        propositions: [
            "Extrêmement",
            "Légèrement",
            "Pas du tout",
            "Modérément"
        ],
        hint: "Elle roule presque sur le côté, à 98 degrés ! 🎱"
    ),
    Question(
        questionTitle: "Neptune est connue pour ?",
        answer: "Vents violents",
        image: .neptune,
        propositions: [
            "Vents violents",
            "Anneaux lumineux",
            "Taches rouges",
            "Lunes multiples"
        ],
        hint: "Ses vents peuvent dépasser 2000 km/h 🌬️"
    ),
    Question(
        questionTitle: "Quelle géante gazeuse possède une tache rouge ?",
        answer: "Jupiter",
        image: .jupiter,
        propositions: [
            "Jupiter",
            "Saturne",
            "Uranus",
            "Neptune"
        ],
        hint: "C'est une tempête plus grande que la Terre ! 🔴"
    ),
    Question(
        questionTitle: "Saturne est composée principalement de ?",
        answer: "Hydrogène et hélium",
        image: .saturn,
        propositions: [
            "Hydrogène et hélium",
            "Oxygène et azote",
            "Carbone et méthane",
            "Fer et silicium"
        ],
        hint: "Comme le Soleil et les étoiles 💨"
    ),
    Question(
        questionTitle: "Quelle planète est surnommée la planète bleue ?",
        answer: "Neptune",
        image: .neptune,
        propositions: [
            "Neptune",
            "Uranus",
            "Terre",
            "Vénus"
        ],
        hint: "Le méthane dans son atmosphère lui donne cette couleur 💙"
    ),
    Question(
        questionTitle: "Uranus et Neptune sont appelées ?",
        answer: "Géantes glaciaires",
        image: .uranus,
        propositions: [
            "Géantes glaciaires",
            "Géantes gazeuses",
            "Planètes telluriques",
            "Planètes naines"
        ],
        hint: "Elles contiennent beaucoup d'eau et d'ammoniac gelés 🧊"
    ),
    Question(
        questionTitle: "Jupiter possède combien de lunes principales ?",
        answer: "79",
        image: .jupiter,
        propositions: [
            "79",
            "62",
            "27",
            "14"
        ],
        hint: "Elle a un véritable système de satellites ! 🌙"
    ),
    Question(
        questionTitle: "Neptune possède une lune célèbre appelée ?",
        answer: "Triton",
        image: .neptune,
        propositions: [
            "Triton",
            "Titan",
            "Ganymède",
            "Callisto"
        ],
        hint: "C'est la seule grosse lune à orbiter à l'envers 🔄"
    )
]

// Sublevel 3: Astéroïdes et comètes
let l2_astresMineurs: [Question] = [
    Question(
        questionTitle: "La ceinture d'astéroïdes se trouve entre ?",
        answer: "Mars et Jupiter",
        image: .dragon,
        propositions: [
            "Mars et Jupiter",
            "Terre et Mars",
            "Jupiter et Saturne",
            "Vénus et Mercure"
        ],
        hint: "C'est entre la dernière planète rocheuse et la première géante 🪨"
    ),
    Question(
        questionTitle: "Quel astéroïde a provoqué la disparition des dinosaures ?",
        answer: "Chicxulub",
        image: .dragon,
        propositions: [
            "Chicxulub",
            "Vesta",
            "Ceres",
            "Eros"
        ],
        hint: "Il a laissé un cratère au Mexique il y a 66 millions d'années 🦖"
    ),
    Question(
        questionTitle: "Les comètes sont composées principalement de ?",
        answer: "Glace et poussière",
        image: .dragon,
        propositions: [
            "Glace et poussière",
            "Roche",
            "Métal",
            "Hydrogène gazeux"
        ],
        hint: "On les appelle parfois des « boules de neige sale » ❄️"
    ),
    Question(
        questionTitle: "Quand une comète s'approche du Soleil, elle forme ?",
        answer: "Une queue",
        image: .dragon,
        propositions: [
            "Une queue",
            "Une orbite",
            "Un champ magnétique",
            "Une atmosphère"
        ],
        hint: "La glace se sublime et le vent solaire repousse les gaz ☄️"
    ),
    Question(
        questionTitle: "Quel astéroïde est le plus grand du système solaire ?",
        answer: "Cérès",
        image: .dragon,
        propositions: [
            "Cérès",
            "Vesta",
            "Pallas",
            "Hygiea"
        ],
        hint: "Il est même classé comme planète naine ! 🌑"
    ),
    Question(
        questionTitle: "Quel objet céleste visite périodiquement la Terre ?",
        answer: "Comète",
        image: .dragon,
        propositions: [
            "Comète",
            "Astéroïde",
            "Planète naine",
            "Météore"
        ],
        hint: "Elle revient régulièrement sur une orbite allongée 🔄"
    ),
    Question(
        questionTitle: "Les météoroïdes deviennent météores lorsqu'ils ?",
        answer: "Entrent dans l'atmosphère terrestre",
        image: .dragon,
        propositions: [
            "Entrent dans l'atmosphère terrestre",
            "Sortent du système solaire",
            "Tombent sur une planète",
            "Se désintègrent dans l'espace"
        ],
        hint: "C'est ce qu'on appelle une étoile filante 🌠"
    ),
    Question(
        questionTitle: "Quelle est la comète célèbre visible tous les 76 ans ?",
        answer: "Halley",
        image: .dragon,
        propositions: [
            "Halley",
            "Hale-Bopp",
            "Encke",
            "Lovejoy"
        ],
        hint: "Elle porte le nom de l'astronome qui a calculé son orbite 👨‍🔬"
    ),
    Question(
        questionTitle: "Quel astéroïde a été exploré par Hayabusa ?",
        answer: "Itokawa",
        image: .dragon,
        propositions: [
            "Itokawa",
            "Bennu",
            "Ryugu",
            "Eros"
        ],
        hint: "Cette mission japonaise a ramené des échantillons sur Terre 🇯🇵"
    ),
    Question(
        questionTitle: "Quel est le rôle de la gravité dans la ceinture d'astéroïdes ?",
        answer: "Maintenir les astéroïdes en orbite",
        image: .dragon,
        propositions: [
            "Maintenir les astéroïdes en orbite",
            "Créer des collisions",
            "Former des lunes",
            "Produire des comètes"
        ],
        hint: "Elle les garde en équilibre autour du Soleil ⚖️"
    )
]

// Sublevel 4: Soleil et phénomènes
let l2_soleilEtPhenom: [Question] = [
    Question(
        questionTitle: "Quelle est la principale source d'énergie du système solaire ?",
        answer: "Le Soleil",
        image: .sunFull,
        propositions: [
            "Le Soleil",
            "Jupiter",
            "Mars",
            "La Terre"
        ],
        hint: "C'est l'étoile au centre de notre système ☀️"
    ),
    Question(
        questionTitle: "Quelle couche du Soleil est visible depuis la Terre ?",
        answer: "Photosphère",
        image: .sunFull,
        propositions: [
            "Photosphère",
            "Chromosphère",
            "Noyau",
            "Couronne"
        ],
        hint: "Son nom vient du grec « sphère de lumière » 💡"
    ),
    Question(
        questionTitle: "Comment s'appellent les éruptions solaires ?",
        answer: "Éruptions solaires ou flares",
        image: .sunFull,
        propositions: [
            "Éruptions solaires",
            "Tornades",
            "Vents solaires",
            "Pluies de météores"
        ],
        hint: "Ce sont des explosions de matière à la surface du Soleil 💥"
    ),
    Question(
        questionTitle: "Quel phénomène solaire affecte les aurores sur Terre ?",
        answer: "Vents solaires",
        image: .sunFull,
        propositions: [
            "Vents solaires",
            "Lumière du Soleil",
            "Rayons gamma",
            "Chaleur solaire"
        ],
        hint: "Ces particules interagissent avec notre magnétosphère 🌬️"
    ),
    Question(
        questionTitle: "Quelle est la température approximative du noyau solaire ?",
        answer: "15 millions de °C",
        image: .sunFull,
        propositions: [
            "15 millions de °C",
            "5 500 °C",
            "100 000 °C",
            "1 million de °C"
        ],
        hint: "C'est là que la fusion nucléaire a lieu 🔥"
    ),
    Question(
        questionTitle: "Le Soleil est une étoile de type ?",
        answer: "Naine jaune",
        image: .sunFull,
        propositions: [
            "Naine jaune",
            "Supergéante rouge",
            "Naine blanche",
            "Géante bleue"
        ],
        hint: "C'est une étoile de taille moyenne, pas très chaude 🌟"
    ),
    Question(
        questionTitle: "Comment s'appelle le cycle de 11 ans du Soleil ?",
        answer: "Cycle solaire",
        image: .sunFull,
        propositions: [
            "Cycle solaire",
            "Cycle lunaire",
            "Cycle magnétique terrestre",
            "Cycle des planètes"
        ],
        hint: "Il correspond à l'activité magnétique de notre étoile 🔄"
    ),
    Question(
        questionTitle: "Quelle couche solaire produit la lumière et la chaleur ?",
        answer: "Noyau",
        image: .sunFull,
        propositions: [
            "Noyau",
            "Photosphère",
            "Couronne",
            "Chromosphère"
        ],
        hint: "C'est le cœur où l'hydrogène devient hélium ⚛️"
    ),
    Question(
        questionTitle: "Quelle planète est affectée par les taches solaires ?",
        answer: "Toutes les planètes avec atmosphère",
        image: .sunFull,
        propositions: [
            "Toutes les planètes avec atmosphère",
            "Seulement la Terre",
            "Jupiter uniquement",
            "Mars uniquement"
        ],
        hint: "Les éruptions solaires peuvent perturber les atmosphères 🌍"
    ),
    Question(
        questionTitle: "Qu'est-ce que le vent solaire ?",
        answer: "Flux de particules émises par le Soleil",
        image: .sunFull,
        propositions: [
            "Flux de particules émises par le Soleil",
            "Rayons lumineux",
            "Chaleur infrarouge",
            "Ondes radio"
        ],
        hint: "Il voyage à des centaines de km/s dans l'espace 💨"
    )
]

// =====================
// LEVEL 3 — ÉTOILES & GALAXIES (Approfondir grand public)
// =====================

let l3_missionsHistoriques: [Question] = [
    Question(
        questionTitle: "Quel programme a amené les premiers humains sur la Lune ?",
        answer: "Apollo",
        image: .apolloCsm,
        propositions: [
            "Apollo",
            "Gemini",
            "Soyouz",
            "Dragon"
        ],
        hint: "Son nom vient du dieu grec du Soleil 🚀"
    ),
    Question(
        questionTitle: "En quelle année Apollo 11 a-t-il atterri sur la Lune ?",
        answer: "1969",
        image: .apolloCsm,
        propositions: [
            "1965",
            "1969",
            "1972",
            "1961"
        ],
        hint: "C'était à la fin des années 60, un « petit pas pour l'homme » 🌙"
    ),
    Question(
        questionTitle: "Qui a été le premier homme à marcher sur la Lune ?",
        answer: "Neil Armstrong",
        image: .apolloCsm,
        propositions: [
            "Neil Armstrong",
            "Buzz Aldrin",
            "Yuri Gagarin",
            "Michael Collins"
        ],
        hint: "Il était le commandant d'Apollo 11 👨‍🚀"
    ),
    Question(
        questionTitle: "Quelle sonde a exploré Mars en 1976 ?",
        answer: "Viking 1",
        image: .dragon,
        propositions: [
            "Viking 1",
            "Voyager 1",
            "Mariner 9",
            "Curiosity"
        ],
        hint: "Elle porte le nom de guerriers nordiques 🛡️"
    ),
    Question(
        questionTitle: "Quelle mission a permis de visiter Jupiter pour la première fois ?",
        answer: "Pioneer 10",
        image: .jupiter,
        propositions: [
            "Pioneer 10",
            "Voyager 2",
            "Galileo",
            "Juno"
        ],
        hint: "Son nom signifie « pionnier » en anglais 🌟"
    ),
    Question(
        questionTitle: "Quel véhicule est utilisé pour le transport privé des astronautes vers ISS ?",
        answer: "SpaceX Dragon",
        image: .dragon,
        propositions: [
            "SpaceX Dragon",
            "Apollo CSM",
            "Soyouz",
            "Starship"
        ],
        hint: "C'est un vaisseau de l'entreprise d'Elon Musk 🐉"
    ),
    Question(
        questionTitle: "Quelle mission a permis de survoler Pluton en 2015 ?",
        answer: "New Horizons",
        image: .dragon,
        propositions: [
            "New Horizons",
            "Voyager 1",
            "Cassini",
            "Pioneer 10"
        ],
        hint: "Son nom évoque de « nouveaux horizons » à explorer 🔭"
    ),
    Question(
        questionTitle: "Qui a été le premier homme dans l'espace ?",
        answer: "Youri Gagarine",
        image: .dragon,
        propositions: [
            "Youri Gagarine",
            "Neil Armstrong",
            "Buzz Aldrin",
            "Alan Shepard"
        ],
        hint: "C'était un cosmonaute soviétique en 1961 🇷🇺"
    ),
    Question(
        questionTitle: "Quelle sonde a photographié Saturne et ses anneaux en détail ?",
        answer: "Cassini",
        image: .saturn,
        propositions: [
            "Cassini",
            "Voyager 2",
            "Galileo",
            "Juno"
        ],
        hint: "Elle porte le nom d'un astronome italien du 17e siècle 📸"
    ),
    Question(
        questionTitle: "Quel pays a envoyé le premier satellite artificiel ?",
        answer: "URSS",
        image: .dragon,
        propositions: [
            "URSS",
            "USA",
            "Chine",
            "Japon"
        ],
        hint: "Spoutnik 1 a été lancé en 1957 pendant la guerre froide 🛰️"
    )
]

let l3_stationSpatialeEtVie: [Question] = [
    Question(
        questionTitle: "Comment s'appelle la station spatiale internationale ?",
        answer: "ISS",
        image: .dragon,
        propositions: [
            "ISS",
            "Tiangong",
            "Mir",
            "Skylab"
        ],
        hint: "C'est l'acronyme anglais de International Space Station 🛸"
    ),
    Question(
        questionTitle: "Depuis quand l'ISS est-elle habitée en continu ?",
        answer: "2000",
        image: .dragon,
        propositions: [
            "1995",
            "2000",
            "2010",
            "1990"
        ],
        hint: "C'est le début du nouveau millénaire 📅"
    ),
    Question(
        questionTitle: "Quelle est la principale fonction de l'ISS ?",
        answer: "Recherche scientifique en microgravité",
        image: .dragon,
        propositions: [
            "Recherche scientifique en microgravité",
            "Tourisme spatial",
            "Observation des étoiles",
            "Armement spatial"
        ],
        hint: "C'est un laboratoire en orbite autour de la Terre 🔬"
    ),
    Question(
        questionTitle: "Quel type de gravité est simulé à l'ISS ?",
        answer: "Microgravité",
        image: .dragon,
        propositions: [
            "Microgravité",
            "Zéro gravité",
            "Gravité terrestre",
            "Hypergravité"
        ],
        hint: "Les astronautes flottent, mais la gravité est encore présente 🪶"
    ),
    Question(
        questionTitle: "Comment les astronautes mangent-ils dans l'espace ?",
        answer: "Aliments lyophilisés et emballés",
        image: .dragon,
        propositions: [
            "Aliments lyophilisés et emballés",
            "Repas frais",
            "Aliments crus",
            "Repas liquides uniquement"
        ],
        hint: "La nourriture doit être facile à conserver et à manger en apesanteur 🍽️"
    ),
    Question(
        questionTitle: "Quel organisme international gère l'ISS ?",
        answer: "NASA, ESA, Roscosmos, JAXA, CSA",
        image: .dragon,
        propositions: [
            "NASA, ESA, Roscosmos, JAXA, CSA",
            "NASA seulement",
            "ESA seulement",
            "Roscosmos seulement"
        ],
        hint: "C'est une coopération entre plusieurs agences spatiales 🌍"
    ),
    Question(
        questionTitle: "Quel est l'un des risques majeurs pour la santé des astronautes ?",
        answer: "Perte osseuse et musculaire",
        image: .dragon,
        propositions: [
            "Perte osseuse et musculaire",
            "Surpoids",
            "Déshydratation",
            "Hyperactivité"
        ],
        hint: "Sans gravité, le corps n'a plus besoin de se soutenir 💪"
    ),
    Question(
        questionTitle: "Quelle est la durée moyenne d'une mission à l'ISS ?",
        answer: "6 mois",
        image: .dragon,
        propositions: [
            "3 mois",
            "6 mois",
            "12 mois",
            "1 mois"
        ],
        hint: "C'est la moitié d'une année terrestre ⏰"
    ),
    Question(
        questionTitle: "Quels moyens utilisent les astronautes pour se déplacer à l'ISS ?",
        answer: "En flottant et en se tenant aux mains courantes",
        image: .dragon,
        propositions: [
            "En flottant et en se tenant aux mains courantes",
            "En marchant normalement",
            "Avec des roues",
            "Avec des drones internes"
        ],
        hint: "Ils utilisent les parois comme appui 🤸"
    ),
    Question(
        questionTitle: "Comment l'ISS est-elle alimentée en énergie ?",
        answer: "Panneaux solaires",
        image: .dragon,
        propositions: [
            "Panneaux solaires",
            "Réacteurs nucléaires",
            "Batteries chimiques",
            "Turbines à vent"
        ],
        hint: "Ils captent l'énergie du Soleil, abondante dans l'espace ☀️"
    )
]

let l3_robotiqueEtExploration: [Question] = [
    Question(
        questionTitle: "Quel rover a exploré Mars à partir de 2012 ?",
        answer: "Curiosity",
        image: .mars,
        propositions: [
            "Curiosity",
            "Spirit",
            "Opportunity",
            "Perseverance"
        ],
        hint: "Son nom signifie « curiosité » en anglais 🔍"
    ),
    Question(
        questionTitle: "Quel rover est actuellement actif sur Mars ?",
        answer: "Perseverance",
        image: .mars,
        propositions: [
            "Perseverance",
            "Curiosity",
            "Spirit",
            "Opportunity"
        ],
        hint: "Il est arrivé en 2021 avec l'hélicoptère Ingenuity 🚁"
    ),
    Question(
        questionTitle: "Quelle sonde a été envoyée pour étudier Mercure ?",
        answer: "Messenger",
        image: .mercury,
        propositions: [
            "Messenger",
            "Mariner 10",
            "BepiColombo",
            "Venera"
        ],
        hint: "Son nom est un acronyme qui signifie aussi « messager » 📬"
    ),
    Question(
        questionTitle: "Quelle sonde a exploré Vénus ?",
        answer: "Venera",
        image: .venus,
        propositions: [
            "Venera",
            "Magellan",
            "Venus Express",
            "Pioneer Venus"
        ],
        hint: "C'était un programme soviétique dans les années 70-80 🇷🇺"
    ),
    Question(
        questionTitle: "Quel robot a exploré la surface de l'astéroïde Ryugu ?",
        answer: "Hayabusa2",
        image: .dragon,
        propositions: [
            "Hayabusa2",
            "OSIRIS-REx",
            "Rosetta",
            "Dawn"
        ],
        hint: "C'est une mission japonaise, « hayabusa » signifie « faucon » 🦅"
    ),
    Question(
        questionTitle: "Quel robot a collecté des échantillons de l'astéroïde Bennu ?",
        answer: "OSIRIS-REx",
        image: .dragon,
        propositions: [
            "OSIRIS-REx",
            "Hayabusa2",
            "New Horizons",
            "Dawn"
        ],
        hint: "C'est une mission de la NASA qui a ramené ses échantillons en 2023 🇺🇸"
    ),
    Question(
        questionTitle: "Quel robot a exploré Titan ?",
        answer: "Huygens",
        image: .dragon,
        propositions: [
            "Huygens",
            "Cassini",
            "Voyager 1",
            "Galileo"
        ],
        hint: "Il porte le nom d'un astronome néerlandais du 17e siècle 🔭"
    ),
    Question(
        questionTitle: "Quel rover a analysé la roche martienne appelée 'John Klein' ?",
        answer: "Curiosity",
        image: .mars,
        propositions: [
            "Curiosity",
            "Perseverance",
            "Spirit",
            "Opportunity"
        ],
        hint: "C'est le plus gros rover de la NASA sur Mars 🔴"
    ),
    Question(
        questionTitle: "Quelle sonde a étudié la ceinture d'astéroïdes entre Mars et Jupiter ?",
        answer: "Dawn",
        image: .dragon,
        propositions: [
            "Dawn",
            "Galileo",
            "Cassini",
            "Pioneer 10"
        ],
        hint: "Son nom signifie « aube » en anglais 🌅"
    ),
    Question(
        questionTitle: "Quel robot a atterri sur la comète 67P ?",
        answer: "Philae",
        image: .dragon,
        propositions: [
            "Philae",
            "Rosetta",
            "Hayabusa",
            "New Horizons"
        ],
        hint: "Il faisait partie de la mission Rosetta de l'ESA 🇪🇺"
    )
]

let l3_nouvellesTechnologies: [Question] = [
    Question(
        questionTitle: "Quelle technologie permet le lancement réutilisable de fusées ?",
        answer: "Falcon 9 et Falcon Heavy",
        image: .dragon,
        propositions: [
            "Falcon 9 et Falcon Heavy",
            "Saturn V",
            "Soyouz",
            "Ariane 5"
        ],
        hint: "Ces fusées se posent verticalement après le décollage 🦅"
    ),
    Question(
        questionTitle: "Quel véhicule privé a transporté des astronautes vers ISS ?",
        answer: "SpaceX Crew Dragon",
        image: .dragon,
        propositions: [
            "SpaceX Crew Dragon",
            "Apollo CSM",
            "Soyouz",
            "Starliner"
        ],
        hint: "C'est la capsule de l'entreprise d'Elon Musk 🐉"
    ),
    Question(
        questionTitle: "Quelle technologie est utilisée pour détecter des exoplanètes ?",
        answer: "Transit et vélocité radiale",
        image: .dragon,
        propositions: [
            "Transit et vélocité radiale",
            "Radar terrestre",
            "Photographie directe",
            "Laser orbital"
        ],
        hint: "On mesure les variations de lumière ou de vitesse de l'étoile 📉"
    ),
    Question(
        questionTitle: "Quel télescope est actuellement en orbite pour l'observation en infrarouge ?",
        answer: "James Webb",
        image: .dragon,
        propositions: [
            "James Webb",
            "Hubble",
            "Spitzer",
            "Kepler"
        ],
        hint: "Il a été lancé en décembre 2021, successeur de Hubble 🔭"
    ),
    Question(
        questionTitle: "Quel type d'impression 3D est utilisée sur l'ISS ?",
        answer: "Impression 3D par dépôt de filament",
        image: .dragon,
        propositions: [
            "Impression 3D par dépôt de filament",
            "Stéréolithographie",
            "Frittage laser",
            "Frittage sélectif"
        ],
        hint: "C'est la technique qui fait fondre un fil de plastique 🖨️"
    ),
    Question(
        questionTitle: "Quelle entreprise développe le Starship pour missions lunaires ?",
        answer: "SpaceX",
        image: .dragon,
        propositions: [
            "SpaceX",
            "Blue Origin",
            "NASA",
            "Roscosmos"
        ],
        hint: "C'est l'entreprise fondée par Elon Musk 🚀"
    ),
    Question(
        questionTitle: "Quelle technologie permet de créer des mini-satellites économiques ?",
        answer: "CubeSats",
        image: .dragon,
        propositions: [
            "CubeSats",
            "GPS",
            "Télémétrie",
            "FalconSat"
        ],
        hint: "Ce sont des satellites de la taille d'un cube de 10 cm 📦"
    ),
    Question(
        questionTitle: "Quel télescope détecte des planètes autour d'autres étoiles ?",
        answer: "Kepler",
        image: .dragon,
        propositions: [
            "Kepler",
            "Hubble",
            "James Webb",
            "TESS"
        ],
        hint: "Il porte le nom d'un célèbre astronome allemand ⭐"
    ),
    Question(
        questionTitle: "Quelle technologie a permis la navigation autonome des rovers ?",
        answer: "Vision par ordinateur et capteurs",
        image: .dragon,
        propositions: [
            "Vision par ordinateur et capteurs",
            "Gyroscopes uniquement",
            "Magnétomètres",
            "GPS spatial"
        ],
        hint: "Les rovers analysent leur environnement avec des caméras 👁️"
    ),
    Question(
        questionTitle: "Quel système utilise les communications laser dans l'espace ?",
        answer: "LCRD",
        image: .dragon,
        propositions: [
            "LCRD",
            "DSN",
            "TDRS",
            "Starlink"
        ],
        hint: "C'est le Laser Communications Relay Demonstration de la NASA 💫"
    )
]

// =====================
// LEVEL 4 — COSMOLOGIE & RELATIVITÉ (Plus exigeant, toujours grand public)
// =====================

let l4_relativiteSimplifiee: [Question] = [
    Question(
        questionTitle: "La relativité d'Einstein explique notamment que…",
        answer: "Le temps et l'espace peuvent être affectés par la vitesse et la gravité",
        image: .dragon,
        propositions: [
            "Le temps et l'espace peuvent être affectés par la vitesse et la gravité",
            "La gravité n'existe pas",
            "Les planètes sont immobiles",
            "La lumière s'arrête parfois"
        ],
        hint: "Pense à la célèbre équation E=mc² ⚡"
    ),
    Question(
        questionTitle: "Dans l'idée de la relativité générale, la gravité ressemble à…",
        answer: "Une courbure de l'espace-temps",
        image: .dragon,
        propositions: [
            "Une courbure de l'espace-temps",
            "Un vent qui pousse les objets",
            "Un champ électrique uniquement",
            "Une poussière invisible"
        ],
        hint: "Imagine une bille sur un tissu tendu 🎱"
    ),
    Question(
        questionTitle: "Pourquoi les GPS ont-ils besoin de corrections relativistes ?",
        answer: "Parce que le temps ne s'écoule pas exactement pareil pour les satellites et au sol",
        image: .dragon,
        propositions: [
            "Parce que le temps ne s'écoule pas exactement pareil pour les satellites et au sol",
            "Parce que la Terre est plate",
            "Parce que la lumière n'atteint pas l'espace",
            "Parce que les satellites changent de couleur"
        ],
        hint: "La vitesse et la gravité affectent le temps ⏰"
    ),
    Question(
        questionTitle: "La vitesse de la lumière dans le vide est…",
        answer: "Une vitesse limite (pour l'information)",
        image: .dragon,
        propositions: [
            "Une vitesse limite (pour l'information)",
            "Une vitesse qui varie au hasard",
            "Plus lente que le son",
            "Égale à la vitesse des fusées"
        ],
        hint: "Rien ne peut aller plus vite : ~300 000 km/s 💡"
    ),
    Question(
        questionTitle: "Comment appelle-t-on le phénomène où la lumière est déviée par la gravité d'un objet massif ?",
        answer: "La lentille gravitationnelle",
        image: .dragon,
        propositions: [
            "La lentille gravitationnelle",
            "L'éclipse solaire",
            "La photosynthèse",
            "Le vent solaire"
        ],
        hint: "L'espace-temps courbé agit comme une loupe 🔍"
    )
]

let l4_bigBangEtExpansion: [Question] = [
    Question(
        questionTitle: "Le Big Bang désigne…",
        answer: "Le modèle expliquant l'expansion de l'Univers depuis un état très dense et chaud",
        image: .dragon,
        propositions: [
            "Le modèle expliquant l'expansion de l'Univers depuis un état très dense et chaud",
            "L'explosion du Soleil",
            "La formation de la Terre",
            "La collision de deux planètes"
        ],
        hint: "Ce n'est pas une explosion mais une expansion 💥"
    ),
    Question(
        questionTitle: "Que signifie « l'Univers est en expansion » ?",
        answer: "Les distances entre galaxies augmentent globalement",
        image: .dragon,
        propositions: [
            "Les distances entre galaxies augmentent globalement",
            "Les planètes grossissent",
            "Les étoiles deviennent plus proches",
            "La gravité disparaît"
        ],
        hint: "L'espace lui-même s'étire 🌌"
    ),
    Question(
        questionTitle: "Quel indice célèbre montre que l'Univers est en expansion ?",
        answer: "Le décalage vers le rouge (redshift) des galaxies",
        image: .dragon,
        propositions: [
            "Le décalage vers le rouge (redshift) des galaxies",
            "La couleur des océans",
            "Les phases de la Lune",
            "Les anneaux de Saturne"
        ],
        hint: "La lumière des galaxies qui s'éloignent est décalée 🔴"
    ),
    Question(
        questionTitle: "Qu'est-ce que le « fond diffus cosmologique » (CMB), en très simple ?",
        answer: "Une lumière ancienne, vestige de l'Univers primordial",
        image: .dragon,
        propositions: [
            "Une lumière ancienne, vestige de l'Univers primordial",
            "Une comète très froide",
            "Une ceinture d'astéroïdes",
            "Un nuage d'air autour de la Terre"
        ],
        hint: "C'est la plus vieille lumière de l'Univers ✨"
    ),
    Question(
        questionTitle: "Quand on dit que l'Univers a environ 13,8 milliards d'années, cela vient de…",
        answer: "Mesures et modèles cosmologiques (expansion, CMB, etc.)",
        image: .dragon,
        propositions: [
            "Mesures et modèles cosmologiques (expansion, CMB, etc.)",
            "Un calendrier antique",
            "La longueur des jours terrestres",
            "La taille de Jupiter"
        ],
        hint: "On a calculé en remontant l'expansion 📊"
    )
]

let l4_matiereNoireEnergieNoire: [Question] = [
    Question(
        questionTitle: "Pourquoi parle-t-on de « matière noire » ?",
        answer: "On observe ses effets gravitationnels sans la voir directement",
        image: .dragon,
        propositions: [
            "On observe ses effets gravitationnels sans la voir directement",
            "Parce qu'elle est faite de charbon",
            "Parce qu'elle n'existe que la nuit",
            "Parce qu'elle est au centre de la Terre"
        ],
        hint: "Elle n'émet pas de lumière mais exerce une force 🔮"
    ),
    Question(
        questionTitle: "Quel indice a mené à l'idée de matière noire dans les galaxies ?",
        answer: "La vitesse de rotation des étoiles autour du centre galactique",
        image: .dragon,
        propositions: [
            "La vitesse de rotation des étoiles autour du centre galactique",
            "Les phases de Vénus",
            "La couleur de Mars",
            "La taille des comètes"
        ],
        hint: "Les étoiles en périphérie tournent trop vite 🌀"
    ),
    Question(
        questionTitle: "L'« énergie noire » est souvent évoquée pour expliquer…",
        answer: "L'accélération de l'expansion de l'Univers",
        image: .dragon,
        propositions: [
            "L'accélération de l'expansion de l'Univers",
            "La formation des anneaux de Saturne",
            "La rotation de la Terre",
            "La météo sur Mars"
        ],
        hint: "L'expansion de l'Univers s'accélère, pas l'inverse 🚀"
    ),
    Question(
        questionTitle: "À propos de matière noire et d'énergie noire, on peut dire que…",
        answer: "Elles restent parmi les grandes inconnues de la cosmologie",
        image: .dragon,
        propositions: [
            "Elles restent parmi les grandes inconnues de la cosmologie",
            "On les a déjà vues au télescope à l'œil nu",
            "Elles sont identiques à l'oxygène",
            "Elles n'ont aucun lien avec la gravité"
        ],
        hint: "Ce sont de grands mystères de la science actuelle 🤔"
    ),
    Question(
        questionTitle: "Pourquoi ces sujets sont-ils difficiles à étudier ?",
        answer: "Parce qu'ils ne se détectent pas facilement par la lumière",
        image: .dragon,
        propositions: [
            "Parce qu'ils ne se détectent pas facilement par la lumière",
            "Parce que les planètes sont trop petites",
            "Parce que le Soleil cache tout",
            "Parce que les télescopes ne fonctionnent pas dans l'espace"
        ],
        hint: "Ce qui est « noir » n'interagit pas avec la lumière 👀"
    )
]

let l4_trousNoirsIntro: [Question] = [
    Question(
        questionTitle: "Un trou noir est…",
        answer: "Une région où la gravité est si forte que la lumière ne peut pas s'échapper",
        image: .dragon,
        propositions: [
            "Une région où la gravité est si forte que la lumière ne peut pas s'échapper",
            "Un trou dans l'atmosphère",
            "Une planète invisible",
            "Une comète très lente"
        ],
        hint: "Même la lumière y est piégée 🕳️"
    ),
    Question(
        questionTitle: "Comment appelle-t-on la limite à partir de laquelle rien ne peut s'échapper d'un trou noir ?",
        answer: "L'horizon des événements",
        image: .dragon,
        propositions: [
            "L'horizon des événements",
            "La ceinture d'astéroïdes",
            "La stratosphère",
            "La couronne solaire"
        ],
        hint: "C'est le point de non-retour ⚫"
    ),
    Question(
        questionTitle: "D'où viennent souvent les trous noirs stellaires (les plus « simples ») ?",
        answer: "De l'effondrement d'une étoile massive en fin de vie",
        image: .dragon,
        propositions: [
            "De l'effondrement d'une étoile massive en fin de vie",
            "De la fusion de deux planètes",
            "D'une comète qui gèle",
            "D'un satellite artificiel perdu"
        ],
        hint: "Une grosse étoile meurt et s'effondre sur elle-même ⭐"
    ),
    Question(
        questionTitle: "Peut-on « voir » un trou noir directement en lumière visible ?",
        answer: "Non, on l'infère via ses effets et ce qui l'entoure",
        image: .dragon,
        propositions: [
            "Non, on l'infère via ses effets et ce qui l'entoure",
            "Oui, il brille plus que le Soleil",
            "Oui, il est bleu vif",
            "Oui, mais seulement la nuit"
        ],
        hint: "Il n'émet pas de lumière mais affecte ce qui l'entoure 👁️"
    ),
    Question(
        questionTitle: "Qu'observe-t-on souvent autour d'un trou noir actif ?",
        answer: "Un disque de matière très chaude",
        image: .dragon,
        propositions: [
            "Un disque de matière très chaude",
            "Des anneaux comme Saturne",
            "Une mer d'eau",
            "Une atmosphère respirable"
        ],
        hint: "La matière s'accumule et chauffe en spiralant 🔥"
    )
]
// =====================
// LEVEL 5 — FRONTIÈRES (Exoplanètes, astrobiologie, questions « modernes »)
// =====================

let l5_exoplanetesEtVie: [Question] = [
    Question(
        questionTitle: "Qu'appelle-t-on la « zone habitable » autour d'une étoile (en simplifiant) ?",
        answer: "La zone où l'eau liquide pourrait exister à la surface d'une planète",
        image: .dragon,
        propositions: [
            "La zone où l'eau liquide pourrait exister à la surface d'une planète",
            "La zone où les comètes se forment",
            "La zone sans gravité",
            "La zone où la lumière s'arrête"
        ],
        hint: "Ni trop chaud, ni trop froid pour l'eau 💧"
    ),
    Question(
        questionTitle: "Pourquoi une planète trop proche de son étoile est souvent moins favorable à l'eau liquide ?",
        answer: "Il peut y faire trop chaud",
        image: .venus,
        propositions: ["Il peut y faire trop chaud", "Elle perd sa gravité", "Elle devient une comète", "Elle devient une galaxie"],
        hint: "L'eau s'évapore à haute température 🔥"
    ),
    Question(
        questionTitle: "Quel indice pourrait suggérer une atmosphère intéressante sur une exoplanète ?",
        answer: "Des signatures de gaz détectées par spectre",
        image: .dragon,
        propositions: [
            "Des signatures de gaz détectées par spectre",
            "La présence d'anneaux visibles à l'œil nu",
            "Une queue de comète",
            "La couleur de la Terre"
        ],
        hint: "On analyse la lumière qui traverse l'atmosphère 🌈"
    ),
    Question(
        questionTitle: "Pourquoi étudier les atmosphères d'exoplanètes est-il important ?",
        answer: "Cela aide à comprendre leur climat et une possible habitabilité",
        image: .dragon,
        propositions: [
            "Cela aide à comprendre leur climat et une possible habitabilité",
            "Cela sert à ralentir les fusées",
            "Cela permet de fabriquer des étoiles",
            "Cela empêche les éclipses"
        ],
        hint: "Une atmosphère peut indiquer des conditions favorables à la vie 🌍"
    ),
    Question(
        questionTitle: "Qu'est-ce qu'un « biosignature » (idée générale) ?",
        answer: "Un indice possible d'activité du vivant",
        image: .dragon,
        propositions: [
            "Un indice possible d'activité du vivant",
            "Un type d'astéroïde",
            "Une météo sur Jupiter",
            "Un anneau de Saturne"
        ],
        hint: "Comme l'oxygène produit par la vie sur Terre 🌱"
    )
]

let l5_trousNoirsEtOndesGravitationnelles: [Question] = [
    Question(
        questionTitle: "Qu'est-ce qu'une onde gravitationnelle (simplifié) ?",
        answer: "Une ondulation de l'espace-temps produite par des événements très énergétiques",
        image: .dragon,
        propositions: [
            "Une ondulation de l'espace-temps produite par des événements très énergétiques",
            "Un vent solaire très fort",
            "Une nouvelle planète",
            "Une pluie de météores"
        ],
        hint: "L'espace-temps lui-même vibre 🌊"
    ),
    Question(
        questionTitle: "Quels événements peuvent produire des ondes gravitationnelles détectables ?",
        answer: "La fusion de trous noirs ou d'étoiles à neutrons",
        image: .dragon,
        propositions: [
            "La fusion de trous noirs ou d'étoiles à neutrons",
            "Les phases de la Lune",
            "La rotation de Mars",
            "Les anneaux de Saturne"
        ],
        hint: "Des événements cosmiques ultra-violents ⚫"
    ),
    Question(
        questionTitle: "Pourquoi les ondes gravitationnelles sont-elles une nouvelle façon d'observer l'Univers ?",
        answer: "Elles complètent la lumière : on observe des phénomènes autrement invisibles",
        image: .dragon,
        propositions: [
            "Elles complètent la lumière : on observe des phénomènes autrement invisibles",
            "Elles remplacent les télescopes",
            "Elles rendent la lumière plus lente",
            "Elles changent la couleur des planètes"
        ],
        hint: "On a maintenant un nouveau sens pour observer 👂"
    ),
    Question(
        questionTitle: "Quand on détecte une onde gravitationnelle, on mesure…",
        answer: "Une très petite variation de distance due au passage de l'onde",
        image: .dragon,
        propositions: [
            "Une très petite variation de distance due au passage de l'onde",
            "La température du Soleil",
            "La taille de Jupiter",
            "La pression de l'air terrestre"
        ],
        hint: "L'espace s'étire et se compresse très légèrement 📏"
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
        ],
        hint: "On peut « entendre » deux trous noirs qui spiralent 🎵"
    )
]

let l5_originesEtElements: [Question] = [
    Question(
        questionTitle: "D'où viennent la plupart des éléments lourds (au-delà de l'hélium) ?",
        answer: "Des étoiles et de leurs explosions (supernovas, etc.)",
        image: .dragon,
        propositions: [
            "Des étoiles et de leurs explosions (supernovas, etc.)",
            "Uniquement de la Terre",
            "Uniquement des comètes",
            "Du vent sur Mars"
        ],
        hint: "Les étoiles sont des forges cosmiques ⭐"
    ),
    Question(
        questionTitle: "Pourquoi dit-on parfois que « nous sommes faits de poussières d'étoiles » ?",
        answer: "Les éléments chimiques de notre corps ont été fabriqués dans des étoiles",
        image: .dragon,
        propositions: [
            "Les éléments chimiques de notre corps ont été fabriqués dans des étoiles",
            "Parce que la Terre est une étoile",
            "Parce que l'air est du métal",
            "Parce que les planètes brillent"
        ],
        hint: "Le carbone, l'oxygène de notre corps viennent d'étoiles mortes ✨"
    ),
    Question(
        questionTitle: "Qu'est-ce que la nucléosynthèse (idée générale) ?",
        answer: "La fabrication de nouveaux noyaux atomiques (éléments) dans certains environnements",
        image: .dragon,
        propositions: [
            "La fabrication de nouveaux noyaux atomiques (éléments) dans certains environnements",
            "Le gel des comètes",
            "Le mouvement des anneaux",
            "La formation des océans"
        ],
        hint: "Des noyaux légers fusionnent pour en créer de plus lourds ⚛️"
    ),
    Question(
        questionTitle: "Pourquoi l'hydrogène est-il l'élément le plus abondant de l'Univers ?",
        answer: "Il s'est formé très tôt, en grande quantité, dans l'Univers primordial",
        image: .dragon,
        propositions: [
            "Il s'est formé très tôt, en grande quantité, dans l'Univers primordial",
            "Parce qu'il pleut de l'hydrogène sur Terre",
            "Parce qu'il est fabriqué par les planètes",
            "Parce que les comètes sont des étoiles"
        ],
        hint: "C'est l'élément le plus simple, un seul proton 🔵"
    ),
    Question(
        questionTitle: "À quoi sert l'étude de ces origines (éléments, étoiles) ?",
        answer: "À comprendre l'histoire de la matière et la formation des systèmes planétaires",
        image: .dragon,
        propositions: [
            "À comprendre l'histoire de la matière et la formation des systèmes planétaires",
            "À accélérer les saisons",
            "À réduire la gravité terrestre",
            "À arrêter la rotation de la Terre"
        ],
        hint: "On retrace le parcours des atomes depuis le Big Bang 🔍"
    )
]

let l5_grandsMysteres: [Question] = [
    Question(
        questionTitle: "Pourquoi l'Univers semble-t-il « vide » alors qu'il contient énormément de matière et d'énergie ?",
        answer: "Parce que les distances entre objets sont immenses",
        image: .dragon,
        propositions: [
            "Parce que les distances entre objets sont immenses",
            "Parce que les galaxies sont minuscules",
            "Parce que la lumière n'existe pas",
            "Parce que la gravité est une illusion"
        ],
        hint: "L'espace entre les étoiles est gigantesque 🌌"
    ),
    Question(
        questionTitle: "Qu'est-ce qu'un « modèle » scientifique, en cosmologie ?",
        answer: "Une description mathématique/testable qui explique des observations",
        image: .dragon,
        propositions: [
            "Une description mathématique/testable qui explique des observations",
            "Une opinion personnelle",
            "Un dessin artistique uniquement",
            "Une rumeur"
        ],
        hint: "Un modèle doit pouvoir être vérifié par des expériences 📐"
    ),
    Question(
        questionTitle: "Pourquoi plusieurs méthodes d'observation sont-elles importantes en astronomie ?",
        answer: "Elles se complètent (lumière, ondes radio, gravitationnelles, etc.)",
        image: .dragon,
        propositions: [
            "Elles se complètent (lumière, ondes radio, gravitationnelles, etc.)",
            "Parce que les télescopes sont inutiles",
            "Parce que la Terre change de place",
            "Parce que la Lune cache tout"
        ],
        hint: "Chaque méthode révèle des choses différentes 🔭"
    ),
    Question(
        questionTitle: "Quel énoncé est le plus juste à propos de « ce qu'on ne sait pas encore » en cosmologie ?",
        answer: "Les inconnues sont normales : elles guident la recherche",
        image: .dragon,
        propositions: [
            "Les inconnues sont normales : elles guident la recherche",
            "On sait déjà absolument tout",
            "Les inconnues prouvent que la science est fausse",
            "On ne peut rien mesurer dans l'espace"
        ],
        hint: "Les questions non résolues font avancer la science 🤔"
    ),
    Question(
        questionTitle: "Pourquoi parler de « probabilités » et d'« incertitudes » en sciences ?",
        answer: "Parce que toute mesure a une marge d'erreur, et on la quantifie",
        image: .dragon,
        propositions: [
            "Parce que les scientifiques devinent au hasard",
            "Parce que la gravité empêche les mesures",
            "Parce que la lumière est toujours fausse",
            "Parce que les planètes changent de taille"
        ],
        hint: "L'honnêteté scientifique inclut les marges d'erreur 📊"
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
        questions: l2_planetesInterieures
    ),
    Quiz(
        title: "Missions spatiales",
        level: 2,
        theme: "Observation & exploration",
        image: .dragon,
        questions: l2_geantes
    ),
    Quiz(
        title: "Météores & astéroïdes",
        level: 2,
        theme: "Observation & exploration",
        image: .mars,
        questions: l2_astresMineurs
    ),
    Quiz(
        title: "Mouvement & gravité",
        level: 2,
        theme: "Observation & exploration",
        image: .earth,
        questions: l2_soleilEtPhenom
    ),
    
    // =====================
    // LEVEL 3
    // =====================
    Quiz(
        title: "Les étoiles",
        level: 3,
        theme: "Astronomie — Étoiles & galaxies",
        image: .sun,
        questions: l3_missionsHistoriques
    ),
    Quiz(
        title: "Les galaxies",
        level: 3,
        theme: "Astronomie — Étoiles & galaxies",
        image: .galaxy,
        questions: l3_stationSpatialeEtVie
    ),
    Quiz(
        title: "Lumière & distances",
        level: 3,
        theme: "Astronomie — Étoiles & galaxies",
        image: .astronaut,
        questions: l3_robotiqueEtExploration
    ),
    Quiz(
        title: "Exoplanètes (intro)",
        level: 3,
        theme: "Astronomie — Étoiles & galaxies",
        image: .neptune,
        questions: l3_nouvellesTechnologies
    ),
    
    // =====================
    // LEVEL 4
    // =====================
    Quiz(
        title: "Relativité (simple)",
        level: 4,
        theme: "Cosmologie — Idées clés",
        image: .relativite,
        questions: l4_relativiteSimplifiee
    ),
    Quiz(
        title: "Big Bang & expansion",
        level: 4,
        theme: "Cosmologie — Idées clés",
        image: .bigbang,
        questions: l4_bigBangEtExpansion
    ),
    Quiz(
        title: "Matière noires",
        level: 4,
        theme: "Cosmologie — Idées clés",
        image: .matiereNoire,
        questions: l4_matiereNoireEnergieNoire
    ),
    Quiz(
        title: "Trous noirs (intro)",
        level: 4,
        theme: "Cosmologie — Idées clés",
        image: .blackHole,
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
        title: "Gravitation",
        level: 5,
        theme: "Frontières — Questions modernes",
        image: .gravitation,
        questions: l5_trousNoirsEtOndesGravitationnelles
    ),
    Quiz(
        title: "Origines",
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
            propositions: ["7", "8", "9", "10"],
            hint: "Pluton n'est plus considérée comme une planète 🪐"
        )
    ]
)
