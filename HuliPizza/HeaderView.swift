//
//  HeaderView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Huli Pizza Company")
                .font(.custom("Georgia", size: 30, relativeTo: .title))
                .foregroundColor(Color("Sky"))
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
