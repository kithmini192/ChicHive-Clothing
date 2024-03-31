//
//  ContentView.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC05 on 2024-03-26.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            welcomePage()
        } else {
            ZStack {
//                Color.mint
//                    .ignoresSafeArea()
//                Text("Hi, Welcome To ChicHive Online Clothing Store!!")
//                    .foregroundColor(.black)
//                    .font(Font.custom("Baskerville-Bold", size: 26))
//                    .multilineTextAlignment(.center)
//                    .font(.system(size: 30))
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
