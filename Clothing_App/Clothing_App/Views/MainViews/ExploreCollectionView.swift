//
//  ExploreCollectionView.swift
//  Clothing_App
//
//  Created by NIBMPC04PC03 on 2024-03-30.
//

import SwiftUI

struct ExploreCollectionView: View {
    var body: some View {
        HStack {
            Image("CDress1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 650)
            
            Image("CDress2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 650)
            
//            Image("CDress3")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//                .frame(height: 650)
        }
    }
}

#Preview {
    ExploreCollectionView()
}
