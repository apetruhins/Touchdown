//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Alex on 22/06/2022.
//

import SwiftUI

struct FeaturedTabView: View {
    
    // MARK: - Properties
    
    
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: Tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - Preview

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 Pro")
            .background(.gray)
    }
}
