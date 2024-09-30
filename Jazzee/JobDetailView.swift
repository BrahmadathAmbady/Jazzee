//
//  JobDetailView.swift
//  Jazzee
//
//  Created by Brahmadath . on 28/09/24.
//

import SwiftUI

struct JobDetailView: View {
    let job: Job // Pass the Job object to this view

    var body: some View {
        VStack(alignment: .leading) {
            Text(job.title)
                .font(.largeTitle)
                .padding(.bottom, 5)

            Text(job.company)
                .font(.title2)
                .foregroundColor(.gray)
                .padding(.bottom, 10)

            Text(job.description)
                .font(.body)
                .padding(.bottom, 20)

            Spacer() // Push content to the top
        }
        .padding() // Add padding around the entire view
        .navigationTitle("Job Details") // Title for this view
    }
}

// Preview for JobDetailView
struct JobDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Sample job data for the preview
        let sampleJob = Job(
            title: "iOS Developer",
            company: "Company A",
            description: "Develop and maintain iOS applications.",
            skills: "Swift", // Example skills
            experience: 3, // Example experience in years
            salary: 80000 // Example salary range
        )
        JobDetailView(job: sampleJob)
    }
}
