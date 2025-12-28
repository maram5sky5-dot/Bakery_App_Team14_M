import SwiftUI


struct Course: Identifiable {
    let id = UUID()
    var imageName: String
    var name: String
    var level: String
    var hours: String
    var date: String
}

// البطاقة نفسها
struct CourseCardView: View {
    var course: Course
    
    var body: some View {
        HStack(spacing: 15) {
            Image(course.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .cornerRadius(10)
                .clipped()
            
            VStack(alignment: .leading, spacing: 5) {
                Text(course.name)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(course.level)
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 2)
                    .background(Color.brown.opacity(0.2))
                    .cornerRadius(5)
                
                VStack(alignment: .leading, spacing: 1) {
                    Text("⏱ \(course.hours)")
                        .font(.caption2)
                    Text("📅 \(course.date)")
                        .font(.caption2)
                }
                .foregroundColor(.gray)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

// الصفحة الرئيسية
struct CourseView: View {
    @State private var searchText = ""
    
    let courses = [
        Course(imageName: "bread1", name: "Babka dough", level: "Intermediate", hours: "2h", date: "19 Feb - 4:00"),
        Course(imageName: "bread2", name: "Cinnamon rolls", level: "Beginner", hours: "2h", date: "19 Feb - 4:00"),
        Course(imageName: "bread3", name: "Japanese bread", level: "Advanced", hours: "2h", date: "19 Feb - 4:00"),
        Course(imageName: "bread4", name: "Banana bread", level: "Intermediate", hours: "2h", date: "19 Feb - 4:00")
    ]
    
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                Text("Courses")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Rectangle()
                    .frame(height: 0.3)
                    .foregroundColor(.gray)
                    .padding(.horizontal, -20)
                    .padding(.top, 10)
                
                // شريط البحث
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
                    .padding(.horizontal, 2)
                    .padding(.vertical, 10)
                
                // قائمة الكورسات Scrollable
                ScrollView {
                    VStack(spacing: 15) {
                        ForEach(courses) { course in
                            CourseCardView(course: course)
                        }
                    }
                    .padding(.top, 10)
                }
                
                Spacer()
                
                // الشريط الأسفل ممتد على كامل عرض الشاشة
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
            .padding(.horizontal, 10)
            .padding(.top, 20)
        }
        
    }
}

#Preview {
    CourseView()
}

