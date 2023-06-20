//
//  ContentView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack { 
            Text("Huli Pizza Company")
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Order Pizza").font(.title)
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
