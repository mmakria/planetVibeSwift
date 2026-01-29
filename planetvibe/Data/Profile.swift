//
//  Profile.swift
//  planetvibe
//
//  Created by Mohamed Makria on 28/01/2026.
//

import Foundation
import SwiftUI

struct Profile : Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var adress: String
    var level: Double
    var statResponse: Double
    var quizDone: Double
    
}
