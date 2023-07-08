//
//  MenuGridView.swift
//  HuliPizza
//
//  Created by Michael Pierce on 2023-07-05.
//

import SwiftUI

struct MenuGridView: View {
    var menu: [MenuItem]
    
    @State private var favorites: [Int] = [-1]
    
    func menu(id:Int) -> MenuItem {
        menu.first(where: {$0.id == id}) ?? noMenuItem
    }
    
    @State var selectedItem:MenuItem = noMenuItem
   
    @State private var favouritedItems: [MenuItem] = []
    // Three column layout of griditems
    let columnLayout = Array(repeating: GridItem(), count: 3)
    let favouritesColumnLayout = Array(repeating: GridItem(), count: 5)
  
    @Namespace private var nspace
    
    var body: some View {
        
        VStack {
            LazyVGrid(columns: favouritesColumnLayout) {
                ForEach(favorites.sorted(), id: \.self) { item in
                    FavoriteTileView(menuItem: menu(id: item))
                        .matchedGeometryEffect(id: item, in: nspace)
                        .onLongPressGesture {
                            if let index = favorites.firstIndex(where: {$0 == item}) {
                                favorites.remove(at: index)
                            }
                        }
                }
            }
            Text("\(selectedItem.name)")
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(menu) {item in
                        if !favorites.contains(item.id) {
                            MenuItemTileView(menuItem: item)
                                .animation(.easeOut(duration: 0.5), value: favorites)
                                .matchedGeometryEffect(id: item.id, in: nspace)
                                .onTapGesture(count: 2) {
                                    if !favorites.contains(item.id) {
                                       
                                            favorites.append(item.id)
                                        
                                    }
                                }
                        }
                    }
                }
            }
        }
        
    }
}

struct MenuGridView_Previews: PreviewProvider {
    static var previews: some View {
        MenuGridView(menu: MenuModel().menu)
    }
}
