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
        FooterView()
            .padding(.horizontal)
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
