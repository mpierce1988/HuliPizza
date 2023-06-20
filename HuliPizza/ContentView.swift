//
//  ContentView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1, 2, 3, 4, 6]
    
    var body: some View {
        VStack {
            ZStack {
                Image("surfBanner")
                    .resizable()
                .scaledToFit()
                Text("Huli Pizza Company")
                    .background()
            }
            Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            HStack {
                Text("Order Pizza").font(.title)
                Spacer()
            }
            ForEach(orders, id: \.self) { order in
                HStack(alignment: .firstTextBaseline) {
                    Text("Your Order Item \(order)")
                    Spacer()
                    Text(19.90, format: .currency(code: "CAD"))
                }
            }
            
            VStack {
                Image(systemName: "rectangle.fill").font(.largeTitle)
                Text("Margharita")
                Text("Description")
            }
            ScrollView {
                ForEach(1...25, id: \.self) { item in
                    HStack(alignment: .top, spacing: 15) {
                        Image(systemName: "\(item).circle.fill").font(.largeTitle)
                        VStack(alignment: .leading) {
                            Text("Margharita")
                            Text("Description")
                        }
                        
                    }
                }
            }
        Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
