//
//  JobsView 2.swift
//  Jazzee
//
//  Created by Brahmadath . on 29/09/24.
//


import SwiftUI

struct JobsView: View {
    @State var featuredJobs = [
        Job(title: "iOS Developer", company: "Company A", description: "Develop and maintain iOS applications.", skills: "Swift", experience: 2, salary: 80000),
        Job(title: "Product Manager", company: "Company B", description: "Lead cross-functional teams to develop products.", skills: "Product Management", experience: 3, salary: 100000),
        Job(title: "Data Analyst", company: "Company C", description: "Analyze data and deliver actionable insights.", skills: "Data Analysis", experience: 1, salary: 70000),
        Job(title: "Graphic Designer", company: "Company D", description: "Create amazing designs", skills: "Figma", experience: 1, salary: 30000)
    ]

    var body: some View {
        ZStack {
            // Gradient Background
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.1), Color.white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Available Jobs")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)

                Spacer()

                ZStack {
                    // Use enumerated() to get both index and job
                    ForEach(featuredJobs.indices, id: \.self) { index in
                        JobCardView(job: featuredJobs[index]) {
                            // Remove the job card when swiped right
                        }
                        .padding(.horizontal)
                        .animation(.easeInOut, value: featuredJobs) // Add animation for smooth transitions
                    }
                }
                .padding(.bottom, 50) // To prevent overlap with the tab bar

                Spacer()
            }
        }
        .navigationTitle("Jobs") // Set navigation title for Jobs tab
    }
}
