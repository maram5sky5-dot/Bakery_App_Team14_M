
import SwiftUI

struct CourseCardView: View {
    
    let course: Course
    
    var body: some View {
        HStack(spacing: 15) {
            
            AsyncImage(url: URL(string: course.imageURL)) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                case .failure(_):
                    Color.gray.opacity(0.2)
                default:
                    ProgressView()
                }
            }
            .frame(width: 80, height: 80)
            .cornerRadius(10)
            .clipped()
            
            VStack(alignment: .leading, spacing: 6) {
                
                Text(course.name)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(course.level)
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 2)
                    .background(Color.brown.opacity(0.2))
                    .cornerRadius(5)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("⏱ \(course.hours)")
                        .font(.caption2)
                    Text("📅 \(course.date)")
                        .font(.caption2)
                }
                .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
