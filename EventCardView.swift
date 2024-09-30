//
//  EventCardView.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//
import SwiftUI

struct EventCardView: View {
    var date: String
    var eventTitle: String
    var eventType: String
    var duration: String
    var companyName: String
    
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Text(date)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(8)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .frame(width: 60)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(eventType)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(eventTitle)
                    .font(.title3)
                    .fontWeight(.bold)
                
                Text(companyName)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                HStack {
                    Image(systemName: "clock")
                    Text(duration)
                        .font(.subheadline)
                }
                .foregroundColor(.gray)
            }
            .padding(.leading, 10)
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}
