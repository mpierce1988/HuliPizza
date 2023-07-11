//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem: Bool = false
    @Binding var item:MenuItem
    @State var presentAlert:Bool = false
    @ObservedObject var orders:OrderModel
    @State private var newOrder:Bool = true
    @State private var order:OrderItem = noOrderItem
    
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)                    
                    .padding(.leading)
                    
            
                if let image = UIImage(named: "\(item.id)_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top, .bottom], 5)
                        .cornerRadius(15)
                        
                        
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
            }
            .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .teal, radius: 5, x: 8, y: 8)
            VStack(alignment: .leading) {
                ScrollView {
                    Text(item.description)
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            
            Button {
                order = OrderItem(id: -999, item: item)
                presentAlert = true
            } label: {
                Spacer()
                Text(item.price, format: .currency(code: "CAD"))
                
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }
            .disabled(item.id < 0)
            .padding()
            .background(.red, in: Capsule())
            .foregroundColor(.white)
            .padding(5)
//            .alert("Buy a \(item.name)", isPresented: $presentAlert) {
//                Button("Make it a double!") {
//                    addedItem = true
//                    orders.addOrder(item, quantity: 2)
//                }
//                Button("Yes") {
//                    addedItem = true
//                    orders.addOrder(item, quantity: 1)
//                }
//                Button("No", role: .cancel){}
//            }
            .sheet(isPresented: $presentAlert) {
                addedItem = true
            } content: {
                OrderDetailView(orderItem: $order, presentSheet: $presentAlert, newOrder: $newOrder)
            }
            
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: .constant(testMenuItem), orders: OrderModel())
    }
}
