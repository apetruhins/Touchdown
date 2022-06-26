//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Alex on 26/06/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding(15)
        .background(sampleProduct.colorRGB)
        .clipShape(Capsule())
    }
}

// MARK: - Preview

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
