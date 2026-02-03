//
//  WeeklyArticle.swift
//  planetvibe
//
//  Created by Mohamed Makria on 03/02/2026.
//

import Foundation
import SwiftUI

struct SpacePhoto: Identifiable {
    let id = UUID()
    let image: ImageResource
    let title: String
    let description: String
}

struct WeeklyArticle {
    let title: String
    let subtitle: String
    let date: String
    let introduction: String
    let photos: [SpacePhoto]
}

// MARK: - Weekly Article Data

let weeklyArticle = WeeklyArticle(
    title: "Les plus belles photos de l'espace",
    subtitle: "Prises par la NASA",
    date: "24 janvier 2026",
    introduction: "Depuis des décennies, la NASA capture des images époustouflantes de notre univers. Des nébuleuses colorées aux galaxies lointaines, ces clichés nous rappellent la beauté infinie du cosmos. Découvrez notre sélection des 5 photos les plus emblématiques.",
    photos: [
        SpacePhoto(
            image: .pillarsOfCreation,
            title: "Les Piliers de la Création",
            description: "Trois immenses colonnes de gaz et de poussière cosmique s'élèvent majestueusement dans l'espace, illuminées par la lumière des jeunes étoiles. Des teintes dorées, orangées et brunes dominent, contrastant avec le fond sombre parsemé d'étoiles scintillantes. Cette image iconique a été capturée par le télescope Hubble dans la nébuleuse de l'Aigle."
        ),
        SpacePhoto(
            image: .earthrise,
            title: "Lever de Terre",
            description: "La Terre apparaît comme une bille bleue et blanche au-dessus de l'horizon gris et cratérisé de la Lune. L'atmosphère terrestre forme un fin halo bleuté, contrastant avec le noir profond de l'espace. Cette photo historique a été prise lors de la mission Apollo 8 en 1968."
        ),
        SpacePhoto(
            image: .sombreroGalaxy,
            title: "La Galaxie du Sombrero",
            description: "Une galaxie spirale vue de profil, avec un noyau brillant entouré d'un anneau de poussière sombre qui lui donne l'apparence d'un chapeau mexicain. Des milliards d'étoiles forment un halo lumineux autour du disque central. Située à 28 millions d'années-lumière, elle fascine les astronomes par sa structure parfaite."
        ),
        SpacePhoto(
            image: .carinaNebula,
            title: "La Nébuleuse de la Carène",
            description: "Des falaises cosmiques de gaz brun-orangé s'élèvent comme des montagnes célestes, sculptées par le rayonnement intense des étoiles naissantes. Un ciel étoilé d'un bleu profond s'étend au-dessus, ponctué de milliers d'étoiles brillantes. Cette image spectaculaire révèle une pouponnière stellaire en pleine activité."
        ),
        SpacePhoto(
            image: .saturnRings,
            title: "Saturne et ses anneaux",
            description: "La planète aux anneaux dans toute sa splendeur : une sphère dorée entourée de ses magnifiques anneaux composés de glace et de roche. Les ombres des anneaux se projettent sur la surface de la planète, créant un jeu de lumière fascinant. Capturée par la sonde Cassini, cette image montre Saturne sous son plus beau jour."
        )
    ]
)
