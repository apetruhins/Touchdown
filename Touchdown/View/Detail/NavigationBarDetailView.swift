//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Alex on 26/06/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        } //: HStack
    }
}

// MARK: - Preview

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
