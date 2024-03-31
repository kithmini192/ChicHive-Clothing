//
//  MainHomePage.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC04 on 2024-03-28.
//

import SwiftUI

struct MainHomePage: View {
    @State private var isExploreCollectionButtonTapped = false
    @State private var isDressesButtonTapped = false
    @State private var isTopsButtonTapped = false
    @State private var isPantsButtonTapped = false
    @State private var isFormalWearButtonTapped = false
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ZStack {
                VStack(spacing: 0) {
                    ScrollView(.vertical) {
                        HeroImageView()
                        NewArrivalView()
                    }
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                .padding(.top, 30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .top) {
                HeaderView {
                    
                } cartAction: {
                    
                }
            }
        }
    }
    
    @ViewBuilder
    private func HeroImageView() -> some View {
        ZStack {
            Image("Hero")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 650)
            
            Button {
                print("Explore Collection Button Clicked")
                isExploreCollectionButtonTapped = true
            } label: {
                RoundedRectangle(cornerRadius: 30).overlay {
                    Text("Explore Collection")
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .foregroundColor(.white)
                }
            }
            .frame(width: 253, height: 40)
            .tint(.black.opacity(0.4))
            .offset(.init(width: 0, height: 250))
            
            NavigationLink(destination: ExploreCollectionView(), isActive: $isExploreCollectionButtonTapped) {
                                    EmptyView()
                                }
        }
    }
    
    @ViewBuilder
    private func NewArrivalView() -> some View {
        ZStack {
            Text("New Arrivals")
                .font(Font.custom("Baskerville-Bold", size: 28))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .frame(width: 225, height: 32, alignment: .top)
                .padding(.top, 25)
        }
//        Image("Divider")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 250)
//            .padding(.top, 10)
        
        ZStack {
            
            Image("Dresses")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 650)
            
            Button {
                print("Dresses Button Clicked")
            } label: {
                RoundedRectangle(cornerRadius: 30).overlay {
                    Text("Dresses")
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .foregroundColor(.white)
                }
            }
            .frame(width: 253, height: 40)
            .tint(.black.opacity(0.4))
            .offset(.init(width: 0, height: 250))
        }
        
        Image("Divider")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250)
            .padding(.top, 10)
        
        ZStack {
            
            Image("tops")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 700)
            
            Button {
                print("Tops Button Clicked")
            } label: {
                RoundedRectangle(cornerRadius: 30).overlay {
                    Text("Tops")
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .foregroundColor(.white)
                }
            }
            .frame(width: 253, height: 40)
            .tint(.black.opacity(0.4))
            .offset(.init(width: 0, height: 250))
        }
        
        Image("Divider")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 250)
            .padding(.top, 10)
        
        ZStack {
            
            Image("Pants")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 700)
            
            Button {
                print("Pants Button Clicked")
            } label: {
                RoundedRectangle(cornerRadius: 30).overlay {
                    Text("Pants")
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .foregroundColor(.white)
                }
            }
            .frame(width: 253, height: 40)
            .tint(.black.opacity(0.4))
            .offset(.init(width: 0, height: 250))
        }
        
        Image("Divider")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250)
            .padding(.top, 10)
        
        ZStack {
            
            Image("formal")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 700)
            
            Button {
                print("Formal Button Clicked")
            } label: {
                RoundedRectangle(cornerRadius: 30).overlay {
                    Text("Formal and Party Wear")
                        .font(Font.custom("Baskerville-Bold", size: 20))
                        .foregroundColor(.white)
                }
            }
            .frame(width: 253, height: 40)
            .tint(.black.opacity(0.4))
            .offset(.init(width: 0, height: 250))
        }
        
//        TabView {
//            
//        }
    }
    
    @ViewBuilder
    private func CollectionView() -> some View {
        
    }
    
    @ViewBuilder
    private func SideMenu() -> some View {
        
    }
    
    @ViewBuilder
    private func SideCart() -> some View {
        
    }
    
}

#Preview {
    MainHomePage()
}
