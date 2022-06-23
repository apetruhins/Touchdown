//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Alex on 23/06/2022.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacig, pinnedViews: []) {
                Section(
                    header: SectionView(rotateClockwase: false),
                    footer: SectionView(rotateClockwase: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            } //: Grid
            .frame(height: 160)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: Scroll view
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
