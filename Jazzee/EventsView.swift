//
//  EventsView.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//

import SwiftUI
struct EventsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Upcoming Events")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 20)
                
                // Reusing the event card from before
                EventCardView(date: "Dec 06", eventTitle: "Pawsome Pets: Meet the Team!", eventType: "Recruiting event", duration: "1 hr", companyName: "Pawsome Pet Supply and Grooming")
                
                EventCardView(date: "Nov 28", eventTitle: "Fall Regional Career Fair", eventType: "Virtual group session", duration: "30 min", companyName: "Various Companies")
                
                EventCardView(date: "Nov 16", eventTitle: "Meet and Greet", eventType: "Recruiting event", duration: "2 hr", companyName: "Sprinkle Dreams")
            }
            .padding()
        }
    }
}
