//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Order Item \(order)")
            HStack(alignment: .firstTextBaseline) {
                Text("1 @ $19.90")
                Spacer()
                Text(19.90, format: .currency(code: "CAD"))
                    .fontWeight(.semibold)
            }
            
        }
        .padding()
        .background(Color(.lightGray))
        .backgroundStyle(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
