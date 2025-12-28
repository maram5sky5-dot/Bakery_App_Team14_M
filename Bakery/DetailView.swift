//
//  DetailView.swift
//  Bakery
//
//  Created by noura on 28/12/2025.
//

import SwiftUI
import MapKit

struct CourseDetailView: View {
    
    let course: Course
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 24.7136, longitude: 46.6753),
        span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                
                AsyncImage(url: URL(string: course.imageURL)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Color.gray.opacity(0.2)
                }
                .frame(height: 260)
                .clipped()
                
                Text(course.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("About the course:")
                        .font(.headline)
                    
                    Text("You will learn new baking techniques, ingredients, and recipes while improving your presentation skills.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
                
                Divider()
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Chef: Ali Boholaiqa")
                    
                    HStack {
                        Text("Level:")
                            .fontWeight(.semibold)
                        Text(course.level)
                            .font(.caption)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 3)
                            .background(Color.brown.opacity(0.2))
                            .cornerRadius(6)
                        
                        Spacer()
                        
                        Text("Duration:")
                            .fontWeight(.semibold)
                        Text(course.hours)
                    }
                    
                    HStack {
                        Text("Date & time:")
                            .fontWeight(.semibold)
                        Text(course.date)
                    }
                }
                .font(.subheadline)
                .padding(.horizontal)
                
                Map(coordinateRegion: $region)
                    .frame(height: 150)
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                Button {
                    print("Book tapped")
                } label: {
                    Text("Book a space")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("Primary"))
                        .cornerRadius(12)
                }
                .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
