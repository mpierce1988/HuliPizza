//
//  ContentView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct ContentView: View {
    var menu:[MenuItem]
    @StateObject private var orders: OrderModel = OrderModel()
    
    @State private var showOrders: Bool = true

    @State private var selectedItem:MenuItem = noMenuItem
    
    var body: some View {
        VStack {            
            HeaderView()
                .shadow(radius: 5)
            
            HStack {
                Text("\(orders.orderItems.count) orders")
                Spacer()
                Button {
                    showOrders.toggle()
                } label: {
                    Image(systemName: showOrders ? "cart" : "menucard")
                        .font(.title2)
                }
            
            }
            .foregroundStyle(.white)
            
            if(showOrders){
                OrderView(orders: orders)
                    .cornerRadius(10)
            } else {
                MenuItemView(item:$selectedItem, orders: orders)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu:menu, selectedItem: $selectedItem)
            }
            
            Spacer()
        }
        .padding()
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(menu:MenuModel().menu)
            
    }
}




