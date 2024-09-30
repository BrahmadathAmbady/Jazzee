//
//  EventDetailView.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//


import SwiftUI

struct EventDetailView: View {
    var eventTitle: String
    var companyName: String
    var eventDescription: String
    var eventDate: String
    var eventTime: String
    var eventDuration: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Event Title and Date
            VStack(alignment: .leading, spacing: 5) {
                Text(eventTitle)
                    .font(.title)
                    .bold()
                
                HStack {
                    Text(eventDate)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text(eventTime)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            // Company Name
            Text("Hosted by \(companyName)")
                .font(.headline)
            
            // Event Description
            Text(eventDescription)
                .font(.body)
            
            // Event Duration
            Text("Duration: \(eventDuration)")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Spacer()
            
            // Apply Button
            Button(action: {
                // Action to apply for the event
            }) {
                Text("Apply for Event")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.horizontal)
        }
        .padding()
        .navigationTitle("Event Details")
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(
            eventTitle: "Pawsome Pets: Meet the Team!",
            companyName: "Pawsome Pet Supply and Grooming",
            eventDescription: "Learn about Pawsome Pets and their work culture. Get a chance to meet the team and learn about future career opportunities.",
            eventDate: "Dec 06",
            eventTime: "1:00 PM",
            eventDuration: "1 hour"
        )
    }
}
