//
//  welcomePage.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct welcomePage: View {
    @State private var isSignInButtonTapped = false
    @State private var isSignUpButtonTapped = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.mint
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
//                Circle()
//                    .scale(1.35)
//                    .foregroundColor(.white.opacity(0.65))
                VStack {
                    Image(uiImage: #imageLiteral(resourceName: "images.jpeg"))
                        .cornerRadius(20)
                        .padding()
                    
                    Text("Let's Get Started")
                        .font(Font.custom("Baskerville-Bold", size: 40))
                        .bold()
                        .padding()
                        .foregroundColor(.black)
                        .background(Color.mint.opacity(0.15))
                        .frame(width: 350, height: 80)
                        .cornerRadius(50)
                    
                    Button("Sign In") {
                        //Navigate to SignInPage
                        isSignInButtonTapped = true
                    }
                    .font(Font.custom("Baskerville-Bold", size: 25))
                    .foregroundColor(.black)
                    .frame(width: 350, height: 50)
                    .background(Color.white.opacity(0.25))
                    .cornerRadius(10)
                    .padding()
                    
                    NavigationLink(destination: SignInPage(), isActive: $isSignInButtonTapped) {
                                            EmptyView()
                                        }
                    
                    HStack{
                        Text("New around here? ")
                        Button("Sign Up") {
                            isSignUpButtonTapped = true
                        }
                        .foregroundColor(.pink)
                        
                        NavigationLink(destination: SignUpPage(), isActive: $isSignUpButtonTapped) {
                                                EmptyView()
                                            }
                    }
                }
            }
        }
    }
}

#Preview {
    welcomePage()
}
