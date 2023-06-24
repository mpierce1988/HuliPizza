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
        VStack() {
            HStack {
                Text("Your Order Item \(order)")
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(1, format: .number)
                Text(19.90, format: .currency(code: "CAD"))
                Spacer()
                Text(19.90, format: .currency(code: "CAD"))
                    .fontWeight(.semibold)
            }
            
        }
        .padding()
        
        
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
