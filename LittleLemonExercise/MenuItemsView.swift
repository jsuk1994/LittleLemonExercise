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
    let FoodCount = Range(0...11)
    let DrinksCount = Range(0...7)
    let DessertCount = Range(0...3)
    
    var body: some View {
        NavigationView{
            ScrollView {
                Food
                Drinks
                Dessert
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



//extension of MenuItemView to extra code
extension MenuItemsView {
    
    //Food grid view
    func FoodItem(Index: Int) -> some View {
        return VStack{
            Rectangle()
                .frame(width: 110, height: 80)
            Text("Food \(Index)")
        }
    }
    
    var Food: some View {
        VStack{
           
                Text("Food")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 380, height: 40, alignment: .leading)
                
            LazyVGrid(columns: colomn) {
                ForEach(FoodCount) { i in FoodItem(Index: i)}
            }
        }
    }
    
    
    //Drinks Grid view
    func DrinkItem(Index: Int) -> some View {
        return VStack{
            Rectangle()
                .frame(width: 110, height: 80)
            Text("Drink \(Index)")
        }
    }
    
    var Drinks: some View {
        VStack{
           
                Text("Drinks")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 380, height: 40, alignment: .leading)
                
            LazyVGrid(columns: colomn) {
                ForEach(DrinksCount) { i in DrinkItem(Index: i)}
            }
        }
    }
    
    //Dessert Grid view
    func DessertItem(Index: Int) -> some View {
        return VStack{
            Rectangle()
                .frame(width: 110, height: 80)
            Text("Dessert \(Index)")
        }
    }
    
    var Dessert: some View {
        VStack{
           
                Text("Dessert")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 380, height: 40, alignment: .leading)
                
            LazyVGrid(columns: colomn) {
                ForEach(DessertCount) { i in DessertItem(Index: i)}
            }
        }
    }
}
