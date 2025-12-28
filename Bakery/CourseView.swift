import SwiftUI

struct CourseView: View {
    
    @StateObject private var viewModel = CourseViewModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack(spacing: 12) {
                    
                    // العنوان
                    Text("Courses")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.black)
                    
                    Rectangle()
                        .frame(height: 0.3)
                        .foregroundColor(.gray)
                        .padding(.horizontal, -20)
                    
                    // البحث
                    TextField("Search", text: $searchText)
                        .padding(.leading, 35)
                        .padding(.vertical, 8)
                        .background(Color("SearchBox"))
                        .cornerRadius(10)
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 10)
                                Spacer()
                            }
                        )
                        .padding(.vertical, 10)
                    
                    // قائمة الكورسات
                    ScrollView {
                        VStack(spacing: 15) {
                            ForEach(viewModel.courses) { course in
                                NavigationLink {
                                    CourseDetailView(course: course)
                                } label: {
                                    CourseCardView(course: course)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.top, 10)
                    }
                    
                    Spacer()
                    
                    // 🔽 الشريط السفلي
                    BottomBarView()
                }
                .padding(.horizontal, 10)
                .padding(.top, 20)
            }
            .onAppear {
                viewModel.fetchCourses()
            }
        }
    }
}

#Preview {
    CourseView()
}

