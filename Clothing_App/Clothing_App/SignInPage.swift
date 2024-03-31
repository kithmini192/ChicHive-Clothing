//
//  SignInPage.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC04 on 2024-03-28.
//

import SwiftUI

struct SignInPage: View {
    @State private var isSignInButtonTapped = false
    @State private var isSignUpButtonTapped = false
    
    var body: some View {
        VStack {
            Text("Hi! Welcome to ChicHive!!")
                .font(Font.custom("Baskerville-Bold", size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            VStack {
                HStack {
                    Image(uiImage:#imageLiteral(resourceName: "AppleLogo.png") )
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                    
                    Text("Sign In with Apple")
                        .font(Font.custom("Baskerville-Bold", size: 17))
                }
                HStack {
                    Image(uiImage:#imageLiteral(resourceName: "GoogleLogo.jpeg") )
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                        .cornerRadius(30)
                    
                    Text("Sign In with google")
                        .font(Font.custom("Baskerville-Bold", size: 17))
                }
            }
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(Color.white)
            .cornerRadius(50.0)
            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
            
            Text("Already Have an Account?")
                .font(Font.custom("Baskerville-Bold", size: 17))
                .foregroundColor(Color.black.opacity(0.4))
            Button("Sign In") {
                //Navigate to Login Page
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
            
            Text("Create your account?")
                .font(Font.custom("Baskerville-Bold", size: 17))
                .foregroundColor(Color.black.opacity(0.4))
            Button("Sign Up") {
                //Navigate to Sign Up Page
                isSignUpButtonTapped = true
            }
            .font(Font.custom("Baskerville-Bold", size: 20))
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.mint)
            .cornerRadius(10)
            
            NavigationLink(destination: SignUpPage(), isActive: $isSignUpButtonTapped) {
                                    EmptyView()
                                }
        }
        .padding()
    }
}

#Preview {
    SignInPage()
}
