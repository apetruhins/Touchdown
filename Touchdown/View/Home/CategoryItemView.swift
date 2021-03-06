//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Alex on 23/06/2022.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: - Properties
    
    let category: Category
    
    // MARK: - Body
    
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //: HStack
            .frame(width: 180, height: 45, alignment: .leading)
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
        } //: Button

    }
}

// MARK: - Preview

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: sampleCategory)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
