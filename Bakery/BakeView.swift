//
//  ContentView.swift
//  Bakery
//
//  Created by Maram Ibrahim  on 03/07/1447 AH.
//
import SwiftUI

struct BakeView: View {
    var body: some View {
        
        // 1. TabView is now the outermost wrapper
        TabView {
            
            // 2. Wrap your entire UI inside the first Tab
            Tab("Bake", image: "Bread_Icon") {
                
                // MARK: - Main VStack (YOUR ORIGINAL CODE STARTS HERE)
                VStack {
                    
                    ZStack{
                        Text("Home Bakery")
                            .foregroundStyle(Color.black)
                            .bold()
                    }
                    
                    Divider()
                    
                    // MARK: - Search Bar
                    VStack{
                        HStack{
                            // add a space where it dents to the right
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 20))
                                .padding(.leading, 1)
                            
                            TextField("Search", text: .constant(""))
                                .frame(height: 36)
                        }
                        .padding(.horizontal, 4)
                        .frame(width: 360, height: 35)
                        .background(Color.gray.opacity(0.1)) // Note: changed .grey to .gray
                        .foregroundStyle(Color.gray)
                    }
                    .border(Color.gray.opacity(0.1), width: 2).cornerRadius(7)
                    
                    HStack{
                        Text("Upcoming")
                            .font(Font.title.bold())
                            .padding(10)
                        Spacer()
                    }
                    
                    // MARK: - List of Booked courses
                    VStack {
                        Image("Layer_1-3")
                        Text("You don't have any booked courses")
                            .padding(15)
                            .font(Font.system(size: 14))
                            .foregroundStyle(Color.gray)
                    }
                    
                    // MARK: - List of Popular Courses
                    HStack {
                        Text("Popular Courses")
                            .font(.title.bold())
                            .padding(10)
                        Spacer()
                    }
                    
                    List  {
                        // Course Row 1
                        HStack (alignment: .top){
                            Image("bread1")
                                .resizable().frame(width: 100, height: 100)
                                .cornerRadius(9)
                                .clipped()
                            
                            VStack (alignment:(.leading), spacing: 7){
                                Text ("Bakka Dough")
                                    .foregroundStyle(Color.black).bold()
                                
                                Text("Intermediate")
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 2)
                                    .background(Color.brown.opacity(0.3))
                                    .font(Font.system(size: 12).bold())
                                    .clipShape(Capsule())
                                
                                Text("⌛️ 2 hr")
                                    .font(Font.system(size: 14))
                                    .foregroundStyle(Color.black)
                                
                                .padding(2)
                                Text("🗓️  19 Feb - 4:00 pm")
                                    .font(Font.system(size: 12))
                            }
                            Spacer()
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(5)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                        .listRowBackground(Color.clear)
                        
                        // Course Row 2
                        HStack (alignment: .top){
                            Image("bread1")
                                .resizable().frame(width: 100, height: 100)
                                .cornerRadius(9)
                                .clipped()
                            
                            VStack (alignment:(.leading), spacing: 4){
                                Text ("Bakka Dough")
                                    .foregroundStyle(Color.black).bold()
                                
                                Text("Intermediate")
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 2)
                                    .background(Color.brown.opacity(0.3))
                                    .font(Font.system(size: 12).bold())
                                    .clipShape(Capsule())
                                
                                HStack{
                                    Image(systemName: "hourglass")
                                    Text("2 hr")
                                        .font(Font.system(size: 14))
                                        .foregroundStyle(Color.black)
                                }
                                
                                .padding(2)
                                
                                HStack{
                                    Image(systemName: "calendar")
                                    Text(" 19 Feb - 4:00 pm")
                                        .font(Font.system(size: 12))
                                }
                                
                            }
                            Spacer()
                        }
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(5)
                        .listRowSeparator(.hidden)
                        .listRowInsets(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                        .listRowBackground(Color.clear)
                    }
                    .listStyle(.plain)
                }
                .background(Color.gray.opacity(0.2)) // Your background applied to the content
                // (YOUR ORIGINAL CODE ENDS HERE)
                
            } // End of Bake Tab
            
            // 3. Definition of other tabs
            Tab("Courses", image: "WoodRoller_Icon") {
                Text("Courses View")
            }
            
            Tab("Profile", systemImage: "person") {
                Text("Profile View")
            }
            
        } // End of TabView
    }
}
#Preview {
    BakeView()
}
