//
//  EventsListView.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//


import SwiftUI

struct EventsListView: View {
    let events = [
        Event(id: "1", title: "Pawsome Pets: Meet the Team!", company: "Pawsome Pet Supply and Grooming", description: "Learn about Pawsome Pets and their work culture.", date: "Dec 06", time: "1:00 PM", duration: "1 hour"),
        Event(id: "2", title: "Fall Regional Career Fair", company: "Virtual group session", description: "Join our fall regional career fair!", date: "Nov 28", time: "10:00 AM", duration: "30 min"),
        Event(id: "3", title: "Meet and Greet", company: "Sprinkle Dreams", description: "A chance to meet the team.", date: "Nov 16", time: "2:00 PM", duration: "2 hours")
    ]
    
    var body: some View {
        NavigationView {
            List(events) { event in
                NavigationLink(destination: EventDetailView(
                    eventTitle: event.title,
                    companyName: event.company,
                    eventDescription: event.description,
                    eventDate: event.date,
                    eventTime: event.time,
                    eventDuration: event.duration
                    
                )) {
                    EventRow(event: event)
                }
            }
            .navigationTitle("Events")
        }
    }
}

struct Event: Identifiable {
    var id: String
    var title: String
    var company: String
    var description: String
    var date: String
    var time: String
    var duration: String
}

struct EventRow: View {
    var event: Event
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(event.title)
                .font(.headline)
            Text(event.company)
                .font(.subheadline)
                .foregroundColor(.gray)
            HStack {
                Text(event.date)
                Text("•")
                Text(event.time)
            }
            .font(.caption)
            .foregroundColor(.gray)
        }
        .padding()
    }
}

struct EventsListView_Previews: PreviewProvider {
    static var previews: some View {
        EventsListView()
    }
}
