//
//  WikiEventDetailView.swift
//  planetvibe
//
//  Created by Mohamed Makria on 29/01/2026.
//

import SwiftUI

struct WikiEventDetailView: View {
    
    var event: Event
    
    var body: some View {
        ZStack {
            Color(.primaryBlue)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    // Image
                    Image(event.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 10)
                    
                    // Title
                    Text(event.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    // Description
                    Text(event.description)
                        .padding()
                        .background(LinearGradient(
                            gradient: Gradient(colors: [.gradientBlue100, .gradientBlue200]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .foregroundColor(.white)
                    
                    // Date and Place
                    HStack(spacing: 15) {
                        Label(event.date, systemImage: "calendar")
                        Label(event.place, systemImage: "mappin.and.ellipse")
                    }
                    .foregroundColor(.white)
                    .font(.subheadline)
                }
                .padding()
            }
        }
    }
}


#Preview {
    WikiEventDetailView(
        event: events[1]
    )
}


