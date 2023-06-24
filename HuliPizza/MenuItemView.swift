//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-06-20.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem = 0
    
    var body: some View {
        VStack {
            HStack {
                Text("Margharita-Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)                    
                    .padding(.leading)
                    
            
                if let image = UIImage(named: "0x_lg") {
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
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mollis tristique arcu, eu feugiat erat. Sed vitae ligula lacus. Quisque fermentum magna vel purus egestas, sit amet commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam mollis tristique arcu, eu feugiat erat. Sed vitae ligula lacus. Quisque fermentum magna vel purus egestas, sit amet commodo.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
            }
            
            Button {
                addedItem += 1
            } label: {
                HStack {
                    Spacer()
                    Text(12.99, format: .currency(code: "CAD"))
                    
                    Image(systemName: addedItem > 0 ? "cart.fill.badge.plus" : "cart.badge.plus")
                    Spacer()
                }
                
                .background(.red)
                .foregroundColor(.white)
                
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
