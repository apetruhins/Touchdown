//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Alex on 26/06/2022.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                
        } //: VStack
        .foregroundColor(.white)
    }
}

// MARK: - Preview

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
