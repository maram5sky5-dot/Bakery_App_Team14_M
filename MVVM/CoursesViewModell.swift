//
//  CoursesViewModel.swift
//  Bakery
//
//  Created by Nuha  on 24/12/2025.
//
import Combine
import Foundation

class CourseViewModel: ObservableObject {
    
    @Published var courses: [Course] = []
    
    func fetchCourses() {
        courses = [
            Course(
                imageURL: "https://i.imgur.com/w2CXHgV.png",
                name: "Banana Bread",
                level: "Beginner",
                hours: "2h",
                date: "19 Feb - 4:00"
            ),
            Course(
                imageURL: "https://i.imgur.com/w2CXHgV.png",
                name: "Croissant",
                level: "Intermediate",
                hours: "3h",
                date: "22 Feb - 6:00"
            )
        ]
    }
}
