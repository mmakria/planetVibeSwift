//
//  EventCardView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 29/01/2026.
//

import SwiftUI

struct EventCardView: View {
    
    var event: Event
    
    var body: some View {
        
        NavigationLink{
            WikiEventDetailView(event: event)
        }label: {
            HStack {
                
                // Image
                Image(event.image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .scaledToFill()
                    .shadow(radius: 3, x: 3, y: 3)
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                
                // Text Stack
                VStack(alignment: .leading, spacing: 4) {
                    // Date
                    Text(event.date)
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundStyle(.white.opacity(0.7))
                    // Titre
                    Text(event.title)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .lineLimit(1)
                    // Description
                    Text(event.description)
                        .font(.caption)
                        .foregroundStyle(.white.opacity(0.7))
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                }
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(LinearGradient(
                gradient: Gradient(colors: [.gradientBlue100, .gradientBlue200]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
            .clipShape(RoundedRectangle(cornerRadius: 12))
        
        }
    }
}



#Preview {
    EventCardView(
        event: Event(
            title: "Nuit des Étoiles",
            description: "Observation des étoiles, planètes et astronomie pour tous les passionnés.",
            date: "08/08/2026",
            place: "Observatoire de Paris, Paris",
            image: .nuitEtoiles
        )
    )
}


