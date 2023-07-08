//
//  StatusBarView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-30.
//

import SwiftUI

struct StatusBarView: View {
    @Binding var showOrders:Bool
    @Binding var showGrid:Bool
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
            if(!showOrders) {
                Button {
                    showGrid.toggle()
                } label: {
                    Image(systemName: showGrid ? "square.grid.3x2" : "list.bullet")
                }
            }
            Spacer()
            
            Text(orders.orderTotal, format: .currency(code: "CAD"))
            
        }
        .foregroundColor(.white)
        .font(.title2)
    }
}

struct StatusBarView_Previews: PreviewProvider {
    static var previews: some View {
        StatusBarView(showOrders: .constant(true), showGrid: .constant(true), orders: OrderModel())
            .background(.black)
            
    }
}
