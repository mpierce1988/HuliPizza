//
//  OrderItemView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-07-05.
//

import SwiftUI

struct OrderItemView: View {
    @Binding var orderItem: OrderItem
    @State private var quantity = 1
    @State private var doubleIngredient = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $doubleIngredient) {
                Text("Double Ingredients" + (doubleIngredient ? " Yes" : " No"))
                Stepper(value: $quantity, in: 1...10) {
                    Text("\(quantity) " + (quantity == 1 ? "pizza" : "pizzas"))
                }
            }
        }
    }
}

struct OrderItemView_Previews: PreviewProvider {
    static var previews: some View {
        OrderItemView(orderItem: .constant(testOrderItem))
    }
}
