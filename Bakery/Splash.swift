//
//  Splash.swift
//  Bakery
//
//  Created by Maram Ibrahim  on 08/07/1447 AH.
//


import SwiftUI

struct Splash: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image("Logo 3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 202.61, height: 168.46)
                VStack(spacing: 4) {
                    
                    Text("Home Bakery")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Brown"))
                    
                    Text("Baked to Perfection")
                        .fontWeight(.bold)
                        .foregroundColor(Color("Brown"))
                }
            }
        }
    }
}
#Preview {
    Splash()
}
