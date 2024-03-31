//
//  Login Page.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct Login_Page: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    @State private var isLoginButtonTapped = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.mint
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack {
                    Text("Sign In")
                        //.font(.largeTitle)
                        .font(Font.custom("Baskerville-Bold", size: 40))
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password)
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                        //user Authentication
                        isLoginButtonTapped = true
                    }
                    .font(Font.custom("Baskerville-Bold", size: 20))
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.mint)
                    .cornerRadius(10)
                    
//                    NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
//                        EmptyView()
//                    }
                    NavigationLink(destination: MainHomePage(), isActive: $isLoginButtonTapped) {
                                            EmptyView()
                                        }
                }
            }
            navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "kithmini123" {
            wrongUsername = 0
            if password.lowercased() == "abc123" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

#Preview {
    Login_Page()
}
