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
            Label {
                Text(59.99, format: .currency(code: "CAD"))
            } icon: {
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            
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
                if let image = UIImage(named: "0_lg") {
                    Image(uiImage: image)
                } else {
                    Image("surfboard_lg")
                }
                Text("Margharita")
                Text("Description")
            }
            ScrollView {
                ForEach(1...25, id: \.self) { item in
                    HStack(alignment: .top, spacing: 15) {
                        if let image = UIImage(named: "\(item)_sm") {
                            Image(uiImage: image)
                        } else {
                            Image("surfboard_sm")
                        }
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
