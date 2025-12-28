//
//  BottomBarView.swift
//  Bakery
//
//  Created by noura on 28/12/2025.

import SwiftUI

struct BottomBarView: View {
    var body: some View {
        HStack {
            Spacer()
            
            VStack(spacing: 4) {
                Image("Logo-2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                Text("Bread")
                    .font(.caption2)
            }
            
            Spacer()
            
            VStack(spacing: 4) {
                Image("Layer_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 28, height: 22)
                Text("Courses")
                    .font(.caption2)
            }
            
            Spacer()
            
            VStack(spacing: 4) {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                Text("Profile")
                    .font(.caption2)
            }
            
            Spacer()
        }
        .padding(.vertical, 10)
        .background(Color.white)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -2)
        .frame(maxWidth: .infinity)
    }
}
