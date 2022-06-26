//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Alex on 26/06/2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            //Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, window?.safeAreaInsets.top)
            
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            
            //Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //Detail bottom part
            VStack(alignment: .center, spacing: 0) {
            
                //Ratings and sizes
                RatingsSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                //Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } //: Scroll
                
                //Quantity and favorite
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                //Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            } //: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        } //: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            shop.selectedProduct.colorRGB.ignoresSafeArea(.all, edges: .all)
        )
    }
}

// MARK: - Preview

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
