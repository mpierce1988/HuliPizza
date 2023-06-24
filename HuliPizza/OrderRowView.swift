//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct OrderRowView: View {
    @Binding var order: OrderItem
    
    var body: some View {
        VStack() {
            HStack {
                Text(order.item.name)
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(order.quantity, format: .number)
                Text(order.item.price, format: .currency(code: "CAD"))
                Spacer()
                Text(order.extPrice, format: .currency(code: "CAD"))
                    .fontWeight(.semibold)
            }
            
        }
        .padding()
        
        
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: .constant(testOrderItem))
    }
}
