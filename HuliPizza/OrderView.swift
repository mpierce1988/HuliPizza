//
//  OrderView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]
    
    var body: some View {
        VStack {
            HStack {
                Text("Order Pizza").font(.title)
                Spacer()
                Label {
                    Text(59.99, format: .currency(code: "CAD"))
                } icon: {
                    Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
                }
            }
            .padding()
            .background(.gray)
            .backgroundStyle(.ultraThinMaterial)            
            
            
            ScrollView {
                ForEach(orders, id: \.self) { order in
                    OrderRowView(order: order)
                        .padding(.bottom, 5)
                        .padding([.leading, .trailing], 7)
                }
            }
        }
        .background(Color("Surf"))
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(orders: [1, 2, 3, 4, 6])
    }
}
