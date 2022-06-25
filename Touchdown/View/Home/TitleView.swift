//
//  TitleView.swift
//  Touchdown
//
//  Created by Alex on 25/06/2022.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - Properties
    
    var title: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
            
            
        } //: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 20)
    }
}

// MARK: - Preview

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
