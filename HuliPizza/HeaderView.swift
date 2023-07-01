//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders: OrderModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
    //                .scaledToFill()
                    .ignoresSafeArea()
                
                Text("Huli Pizza Company")
                    .font(.custom("Georgia", size: 30, relativeTo: .title))
                    .foregroundStyle(.regularMaterial)
                    .fontWeight(.semibold)
            }
            Label {
                Text(orders.orderTotal, format: .currency(code: "CAD"))
            } icon: {
                Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
            }
        }
        .background(.ultraThinMaterial)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .environmentObject(OrderModel())
    }
}
