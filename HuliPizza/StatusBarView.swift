//
//  StatusBarView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-30.
//

import SwiftUI

struct StatusBarView: View {
    @Binding var showOrders:Bool
    @ObservedObject var orders:OrderModel
    var body: some View {
        HStack {
            if(orders.orderItems.count == 1) {
                Text("1 order")
            } else {
                Text("\(orders.orderItems.count) orders")
            }
            Spacer()
            Button {
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
                    .font(.title2)
            }
            Spacer()
            
            Text(orders.orderTotal, format: .currency(code: "CAD"))
            
        }
        .background(.ultraThinMaterial)
        .foregroundColor(Color.black)
        .font(.title2)
    }
}

struct StatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarView(showOrders: .constant(true), orders: OrderModel())
            
    }
}
