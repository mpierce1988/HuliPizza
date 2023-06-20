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
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
            
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




