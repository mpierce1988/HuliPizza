//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct MenuRowView: View {
    var item: MenuItem
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            if let image = UIImage(named: "\(item.id)_sm") {
                Image(uiImage: image)
                    .clipShape(Circle())
                    .padding(.trailing, -25)
                    .padding(.leading, -15)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment: .leading) {
                HStack {
                    Text(item.name)
                    Spacer()
                    Text(item.price, format: .currency(code: "CAD"))
                }
                RatingsView(rating: item.rating)
            }
            
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(item: testMenuItem)
    }
}
