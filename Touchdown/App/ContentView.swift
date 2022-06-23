//
//  ContentView.swift
//  Touchdown
//
//  Created by Alex on 19/06/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties

    
    // MARK: - Body
    
    var body: some View {
        
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        let window = scene?.keyWindow
        
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, window?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        
                        CategoryGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VStack
                } //: Scroll
            } //: VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
