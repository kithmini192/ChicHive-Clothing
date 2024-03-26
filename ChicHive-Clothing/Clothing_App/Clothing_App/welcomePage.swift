//
//  welcomePage.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct welcomePage: View {
    var body: some View {
        NavigationView {
            ZStack {
//                Color.mint
//                    .ignoresSafeArea()
//                Circle()
//                    .scale(1.7)
//                    .foregroundColor(.white.opacity(0.15))
//                Circle()
//                    .scale(1.35)
//                    .foregroundColor(.white.opacity(0.65))
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "images.jpeg"))
                        .cornerRadius(10)
                        .padding()
                    
                    Text("Let's Get Started")
                        .font(Font.custom("Baskerville-Bold", size: 40))
                        .bold()
                        .padding()
                        .foregroundColor(.black)
                        .background(Color.mint)
                        .frame(width: 350, height: 80)
                        .cornerRadius(50)
                    
//                    Button("Login") {
//                        //Navigate to Login
//                    }
//                    .font(Font.custom("Baskerville-Bold", size: 20))
//                    .foregroundColor(.white)
//                    .frame(width: 300, height: 50)
//                    .background(Color.mint)
//                    .cornerRadius(10)
                                            
                }
            }
        }
    }
}

#Preview {
    welcomePage()
}
