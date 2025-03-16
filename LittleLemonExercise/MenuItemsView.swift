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
    let foodCount = Range(0...11)
    let drinksCount = Range(0...7)
    let dessertCount = Range(0...3)
    @State var showSheet: Bool = false
    @State var menuItem = MenuItemDetailView()
    @State var showDetailSheet: Bool = false
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                food
                drinks
                dessert
            }
            .navigationTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showSheet.toggle()
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $showSheet) {
                        MenuItemsOptionView()
                    }
                    .clipShape(.rect(cornerRadius: 40))
                }
            }
        }
        .padding(.horizontal, 8)
    }
}


//Preview
#Preview {
    MenuItemsView()
}



//extension of MenuItemView to extra code
extension MenuItemsView {
    
    //Food grid view
    func foodItem(Index: Int) -> some View {
        return VStack{
            Rectangle()
                .frame(width: 110, height: 80)
            Text("Food \(Index)")
        }
    }
    
    var food: some View {
        VStack{
            
            Text("Food")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 370, height: 40, alignment: .leading)
            
            LazyVGrid(columns: colomn) {
                ForEach(foodCount) { i in foodItem(Index: i)}
                    .onTapGesture {
                        showDetailSheet = true
                    }
                    .fullScreenCover(isPresented: $showDetailSheet) {
                        MenuItemDetailView()
                    }
            }
        }
    }
    
    
    //Drinks Grid view
    func drinkItem(Index: Int) -> some View {
        return VStack{
            Rectangle()
                .frame(width: 110, height: 80)
            Text("Drink \(Index)")
        }
    }
    
    var drinks: some View {
        VStack{
            
            Text("Drinks")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 370, height: 40, alignment: .leading)
            
            LazyVGrid(columns: colomn) {
                ForEach(drinksCount) { i in drinkItem(Index: i)}
            }
        }
    }
    
    //Dessert Grid view
    func dessertItem(Index: Int) -> some View {
        return VStack{
            Rectangle()
                .frame(width: 110, height: 80)
            Text("Dessert \(Index)")
        }
    }
    
    var dessert: some View {
        VStack{
            
            Text("Dessert")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 370, height: 40, alignment: .leading)
            
            LazyVGrid(columns: colomn) {
                ForEach(dessertCount) { i in dessertItem(Index: i)}
            }
        }
    }
}


