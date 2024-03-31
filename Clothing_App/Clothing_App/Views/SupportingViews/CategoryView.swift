//
//  CategoryView.swift
//  Clothing_App
//
//  Created by NIBMPC04PC03 on 2024-03-30.
//

import SwiftUI

struct CategoryView: View {
    var isSelected: Bool = false
    var title: String = "ALL"
    
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(Font.custom("Baskerville-Bold", size: 16))
                .multilineTextAlignment(.center)
                //.foregroundColor(isSelected ? Color.Default : Color.Placeholder.opacity(0.5))
//                .foregroundColor(isSelected ? Color.black : Color.Placeholder.opacity(0.75))
            
            if isSelected {
                Rectangle()
                    .foregroundColor(Color.Default)
                    .frame(width: 5, height: 5)
                    .rotationEffect(Angle(degrees: 45))
            }
        }
    }
}

#Preview {
    CategoryView()
}
