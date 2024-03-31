//
//  HeaderView.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC04 on 2024-03-28.
//

import SwiftUI

struct HeaderView: View {
    
    var menuAction: ButtonAction
    var cartAction: ButtonAction
    
    var body: some View {
        ZStack {
            HStack {
                Button {
                   menuAction()
                } label: {
                    Image("Menu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 50, height: 50)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 84, height: 84)
                    //.cornerRadius(30)
                
                Button {
                    cartAction()
                } label: {
                    Image("shopping Bag")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)
                }
                .frame(width: 70, height: 70)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 75)
        .background(.white)
        .zIndex(1)
        .shadow(radius: 0.3)
    }

}
//
//#Preview {
//    HeaderView()
//}
