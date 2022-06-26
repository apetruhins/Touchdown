//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Alex on 22/06/2022.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - Properties
    
    let player: Player
    
    // MARK: - Body
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - Preview

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: samplePlayer)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
