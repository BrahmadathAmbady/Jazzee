//
//  HomeView.swift
//  Jazzee
//
//  Created by Brahmadath . on 27/09/24.
//
/*import SwiftUI

struct HomeView: View {
    
    // Sample featured jobs data
    let featuredJobs = [
        Job(title: "iOS Developer", company: "Company A", description: "Join our team to develop amazing apps."),
        Job(title: "Product Manager", company: "Company B", description: "Lead product development initiatives."),
        Job(title: "Data Analyst", company: "Company C", description: "Analyze data to help our clients.")
    ]
    
    var body: some View {
        ZStack { // Use ZStack to layer the gradient background
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.1), Color.white]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all) // Make background fill the entire screen
            
            ScrollView { // Use ScrollView to allow vertical scrolling
                VStack(alignment: .leading, spacing: 10) {
                    // Welcome Banner
                    Text("Welcome to Jazzee!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)

                    // Featured Jobs Section
                    Text("Featured Jobs")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom, 10) // Added bottom padding for spacing
                    
                    ForEach(featuredJobs) { job in
                        NavigationLink(destination: JobDetailView(job: job)) {
                            VStack(alignment: .leading, spacing: 5) { // Added spacing within the card
                                Text(job.title)
                                    .font(.headline)
                                    .fontWeight(.medium)
                                Text(job.company)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                Text(job.description)
                                    .font(.body)
                                    .lineLimit(2) // Limit to 2 lines
                                    .padding(.bottom, 5)
                            }
                            .padding() // Padding inside the job card
                            .frame(maxWidth: .infinity, minHeight: 120) // Ensure uniform height
                            .background(Color.white)
                            .cornerRadius(15) // More rounded corners
                            .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 3) // Shadow for depth
                        }
                        .padding(.horizontal) // Equal horizontal padding for job cards
                    }

                    // Quick Action Buttons
                    VStack(spacing: 15) { // Use VStack for vertical stacking
                        NavigationLink(destination: JobsView()) {
                            HStack {
                                Image(systemName: "briefcase.fill")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30) // Fixed size for icon
                                Text("Search Jobs")
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                            }
                            .background(Color.blue)
                            .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: ProfileView()) {
                            HStack {
                                Image(systemName: "person.fill")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30) // Fixed size for icon
                                Text("View Profile")
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                            }
                            .background(Color.green)
                            .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: CreateAccountView()) {
                            HStack {
                                Image(systemName: "plus.app.fill")
                                    .foregroundColor(.white)
                                    .frame(width: 30, height: 30) // Fixed size for icon
                                Text("Create New Account")
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                            }
                            .background(Color.orange)
                            .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal) // Equal horizontal padding for buttons
                    .padding(.top, 20) // Space above the buttons
                    .padding(.bottom, 50) // Added bottom padding to ensure no overlap with tab bar

                    Spacer() // Push content to the top
                }
                .padding() // Add padding around the whole view
            }
        }
        .navigationTitle("Home") // Set the title for the navigation bar
    }
}

// Preview for HomeView
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
*/
