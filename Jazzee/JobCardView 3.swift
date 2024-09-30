//
//  JobCardView 3.swift
//  Jazzee
//
//  Created by Brahmadath . on 30/09/24.
//


import SwiftUI

struct JobCardView: View {
    let job: Job
    @State private var offset: CGSize = .zero
    @State private var cardOpacity: Double = 1.0
    var onRemove: () -> Void // Closure to remove the job card
    @State private var isPresentingDetail = false // State to trigger navigation

    var body: some View {
        VStack(alignment: .leading, spacing: 20) { // Increase spacing for better layout
            // Job Title and Company
            Text(job.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Text(job.company)
                .font(.headline)
                .foregroundColor(.white.opacity(0.8))

            // Additional Info: Skills, Experience, Salary
            VStack(alignment: .leading, spacing: 5) {
                Text("Skills Required:")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)

                Text(job.skills) // Assuming job.skills is a string (comma-separated)
                    .font(.body)
                    .foregroundColor(.white)

                Text("Experience Required: \(job.experience) years") // Assuming job.experience is an Int
                    .font(.body)
                    .foregroundColor(.white)

                Text("Salary: \(job.salary)") // Assuming job.salary is a string or formatted value
                    .font(.body)
                    .foregroundColor(.white)
            }
            .padding(.top, 10)

            // Job Description
            Text(job.description)
                .font(.body)
                .foregroundColor(.white)
                .lineLimit(3)
                .padding(.top, 10)

            Spacer()

            // Learn More Button
            Button(action: {
                isPresentingDetail = true // Trigger navigation
            }) {
                Text("Learn More")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top, 10)
            .navigationDestination(isPresented: $isPresentingDetail) {
                JobDetailView(job: job) // Navigate to JobDetailView
            }

            // Remove Button for swiping functionality
            HStack {
                Spacer()
                Button(action: onRemove) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 24))
                }
            }
        }
        .padding(30) // Increased padding to prevent overlap
        .frame(width: UIScreen.main.bounds.width - 40, height: 500) // Adjusted height to give more room
        .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)) // Colorful background
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 5)
        .offset(x: offset.width, y: 0) // Apply horizontal movement
        .opacity(cardOpacity) // Adjust opacity as card swipes
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    self.offset = gesture.translation // Move the card
                }
                .onEnded { gesture in
                    if self.offset.width < -150 { // Swiped left
                        withAnimation {
                            self.offset = .zero
                        }
                    } else if self.offset.width > 150 { // Swiped right to remove
                        withAnimation {
                            self.cardOpacity = 0
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            self.onRemove() // Trigger closure to remove job
                        }
                    } else {
                        // Snap back to original position if not swiped enough
                        withAnimation {
                            self.offset = .zero
                        }
                    }
                }
        )
    }
}