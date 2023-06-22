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
            HStack {
                Text("Margharita-Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .foregroundColor(Color("Surf"))
                    .padding(.leading)
                    .frame(minWidth: 150, maxWidth: 1000, maxHeight: 300)
                    .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            
                if let image = UIImage(named: "0_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .shadow(color: .teal, radius: 5, x: 8, y: 8)
                        
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                }
            }
            VStack(alignment: .leading) {
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
