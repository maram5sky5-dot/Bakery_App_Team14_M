//
//  CourseModel.swift
//  Bakery
//
//  Created by Nuha  on 24/12/2025.
//import Foundation
import Foundation

struct Course: Identifiable {
    let id = UUID()
    let imageURL: String
    let name: String
    let level: String
    let hours: String
    let date: String
}



