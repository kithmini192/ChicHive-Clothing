//
//  SignUpPage.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC04 on 2024-03-28.
//

import SwiftUI

struct SignUpPage: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    //@State private var showingLoginScreen = false
    @State private var isChecked = false
    @State private var isSignInButtonTapped = false
    
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
                    Text("Sign Up")
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
                        //.border(.red, width: CGFloat(wrongUsername))
                    
                    TextField("Your Email", text: $email)
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Password", text: $password)
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    SecureField("Repeat Your Password", text: $password)
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    CheckboxView(isChecked: $isChecked)
                                            .padding(.top, 10)
                    
                    Button("Sign Up") {
                        //Navigate to the Login Page 
                        isSignInButtonTapped = true
                    }
                    .font(Font.custom("Baskerville-Bold", size: 20))
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.mint)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Login_Page(), isActive: $isSignInButtonTapped) {
                                            EmptyView()
                                        }
                }
            }
        }
    }
}

struct CheckboxView: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            HStack {
                Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                    .foregroundColor(isChecked ? .blue : .gray)
                    .imageScale(.large)
                Text("I agree all statements in Terms of service")
                    .font(Font.custom("Baskerville-Bold", size: 15))
                    .foregroundColor(.black)
            }
        }
    }
}


#Preview {
    SignUpPage()
}
