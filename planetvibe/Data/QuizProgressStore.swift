//
//  QuizProgressStore.swift
//  planetvibe
//
//  Created by apprenant82 on 30/01/2026.
//

import Foundation
import Combine


final class QuizProgressStore: ObservableObject {
    
    // IDs des quiz terminés (fake persistance)
    @Published private(set) var completedQuizIDs: Set<UUID> = []
    
    // Initialise le store avec une progression "fake":
    // Marque tous les 3 premiers quiz du niveau 1 comme terminés, pas le 4e (pour la démo).
    init(quizzes: [Quiz]) {
        let level1 = quizzes.filter { $0.level == 1 }
        
        // Pré-valide les quizz 1, 2 et 3 pour la démo.
        let precompleted = level1.dropLast().map { $0.id }
        self.completedQuizIDs = Set(precompleted)
    }
    
    func isCompleted(_ quiz: Quiz) -> Bool {
        completedQuizIDs.contains(quiz.id)
    }
    
    func markCompleted(_ quiz: Quiz) {
        completedQuizIDs.insert(quiz.id)
    }
    
    // Débloque le 2 après avoir finir le 4e quizz du niveau 1, sans débloquer les autres niveaux
    func isLevelUnlocked(_ level: Int, quizzes: [Quiz]) -> Bool {
        if level <= 1 {
            return true
        } else if level >= 3 {
            return false
        }
        
        // Règle : tout est bloqué tant que le niveau 1 n'est pas terminé.
        let level1 = quizzes.filter { $0.level == 1 }
        guard !level1.isEmpty else { return false }
        
        return level1.allSatisfy { completedQuizIDs.contains($0.id) }
    }
    
}
