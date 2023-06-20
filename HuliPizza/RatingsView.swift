//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    
    var clampedRating: Int {
        return min(max(1, rating), 6)
    }
    
    var body: some View {
        HStack {
            ForEach(1...6, id: \.self) { index in
                Image(systemName: (index <= clampedRating) ? "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView(rating: 5)
    }
}
