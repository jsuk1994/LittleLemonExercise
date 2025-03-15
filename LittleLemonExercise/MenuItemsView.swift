//
//  ContentView.swift
//  LittleLemonExercise
//
//  Created by jj on 15/03/2025.
//

import SwiftUI

struct MenuItemsView: View {
    
    var colomn: [GridItem] = [GridItem(),
                              GridItem(),
                              GridItem()]
    let GridItemInt = Range(0...11)
    
    var body: some View {
        NavigationView{
            ScrollView {
                Food
                
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: Text("viwe")) {
                        Image(systemName: "house")
                    }
                }
            }
        }
    }
}

#Preview {
    MenuItemsView()
}


extension MenuItemsView {
    
    func FoodItem(Index: Int) -> some View {
        return VStack{
            Rectangle()
                .frame(width: 110, height: 80)
            Text("Food \(Index)")
        }
    }
    
    var Food: some View {
        VStack{
            VStack(alignment: .leading){
                Text("Food")
                .background(Color.red)
            }
            LazyVGrid(columns: colomn) {
                ForEach(GridItemInt) { i in FoodItem(Index: i)}
            }
        }
    }
}
