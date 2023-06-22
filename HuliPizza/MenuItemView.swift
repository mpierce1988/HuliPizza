//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg") {
                Image(uiImage: image)
                    .cornerRadius(10)
                    
            } else {
                Image("surfboard_lg")
            }
            VStack(alignment: .leading) {
                Text("Margharita")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Surf"))
                    .padding(.leading)
                    .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mollis tristique arcu, eu feugiat erat. Sed vitae ligula lacus. Quisque fermentum magna vel purus egestas, sit amet commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mollis tristique arcu, eu feugiat erat. Sed vitae ligula lacus. Quisque fermentum magna vel purus egestas, sit amet commodo.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            
                
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
