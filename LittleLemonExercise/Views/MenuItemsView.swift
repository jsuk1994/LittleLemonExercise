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
    
    @State var showSheet: Bool = false
    @State var showDetailSheet: Bool = false
    
    @ObservedObject var menuItems: MenuViewViewModel = MenuViewViewModel()
    @State var item1: MenuItemModel
    
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
    MenuItemsView(item1: MenuItemModel(id: UUID(), price: 11.00, title: "food 1", menuCategory: .Food, orderCount: 11, price2: 11, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]))
}



//extension of MenuItemView to extra code
extension MenuItemsView {
    
    //Food grid view
//    func foodItem(data: [MenuItemModel]) -> some View {
//        return VStack{
//            Rectangle()
//                .frame(width: 110, height: 80)
//            Text("Food \(data)")
//        }
//    }
    
    var food: some View {
        VStack{
            
            Text("Food")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 370, height: 40, alignment: .leading)
            
            LazyVGrid(columns: colomn) {
                ForEach(menuItems.foodMenuItems) { food in
                    VStack {
                        Rectangle()
                            .frame(width: 110, height: 80)
                        Text(food.title)
                    }
                    .onTapGesture {
                        showDetailSheet = true
                    }
                    .fullScreenCover(isPresented: $showDetailSheet) {
                        MenuItemDetailsView(item1: food)
                    }
                }
            }
        }
    }
    
    
    //Drinks Grid view
//    func drinkItem(Index: Int) -> some View {
//        return VStack{
//            Rectangle()
//                .frame(width: 110, height: 80)
//            Text("Drink \(Index)")
//        }
//    }
    
    var drinks: some View {
        VStack{
            
            Text("Drinks")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 370, height: 40, alignment: .leading)
            
            LazyVGrid(columns: colomn) {
                ForEach(menuItems.drinkMenuItems) { drink in
                    VStack {
                        Rectangle()
                            .frame(width: 110, height: 80)
                        Text(drink.title)
                    }}
            }
        }
    }
    
    //Dessert Grid view
//    func dessertItem(Index: Int) -> some View {
//        return VStack{
//            Rectangle()
//                .frame(width: 110, height: 80)
//            Text("Dessert \(Index)")
//        }
//    }
    
    var dessert: some View {
        VStack{
            
            Text("Dessert")
                .font(.title)
                .fontWeight(.semibold)
                .frame(width: 370, height: 40, alignment: .leading)
            
            LazyVGrid(columns: colomn) {
                ForEach(menuItems.dessertMenuItems) { dessert in
                    VStack {
                        Rectangle()
                            .frame(width: 110, height: 80)
                        Text(dessert.title)
                    }}
            }
        }
    }
}


