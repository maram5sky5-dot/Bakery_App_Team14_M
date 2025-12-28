//
//  ProfileView.swift
//  Bakery
//
//  Created by Nuha  on 24/12/2025.
//

import SwiftUI

struct ProfileView: View {
    @State private var username: String = "username"

    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()

            VStack(spacing: 12) {

                // 🔹 العنوان
                Text("Profile")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .center)

                Rectangle()
                    .frame(height: 0.3)
                    .foregroundColor(.gray)
                    .padding(.horizontal, -20)
                    .padding(.top, 10)

                // 🔹 كرت الاسم
                HStack(spacing: 12) {
                    ZStack(alignment: .bottomTrailing) {
                        Circle()
                            .fill(Color("Beige"))
                            .frame(width: 48, height: 48)
                        Image("Group 27667")
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(Color("Brown"))
                            .background(Color.white.clipShape(Circle()))
                            .offset(x: 2, y: 2)
                    }

                    TextField("username", text: $username)
                        .padding(10)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)

                    Button("Done") {}
                        .foregroundColor(Color("Brown"))
                }
                .padding()
                .background(Color.white)
                .cornerRadius(16)
                .shadow(color: .black.opacity(0.05), radius: 5)
                .padding(.horizontal)

                Divider()
                    .padding(.horizontal)

                // 🔹 Booked courses
                Text("Booked courses")
                    .font(.title3)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)

                // 🔹 Empty State
                VStack(spacing: 12) {
                    Image("Layer_1-3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160)
                        .foregroundColor(.gray.opacity(0.6))

                    Text("You don’t have any booked courses")
                        .font(.footnote)
                        .foregroundColor(.gray.opacity(0.7))
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 30)

                Spacer()

                // 🔹 Bottom Bar (نفسه بالضبط)
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
                            .foregroundColor(Color("Brown"))

                        Text("Profile")
                            .font(.caption2)
                            .foregroundColor(Color("Brown"))
                    }

                    Spacer()
                }
                .padding(.vertical, 10)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -2)
            }
            .padding(.horizontal, 10)
            .padding(.top, 20)
        }
    }
}

#Preview {
    ProfileView()
}
