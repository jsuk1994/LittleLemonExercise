//
//  MenuViewViewModel.swift
//  LittleLemonExercise
//
//  Created by jj on 17/03/2025.
//
import Foundation

class MenuViewViewModel: ObservableObject {
   
    @Published var foodMenuItems: [MenuItemModel] = [
        MenuItemModel(id: UUID(), price: 11.00, title: "food 1", menuCategory: .Food, orderCount: 11, price2: 11, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 12.00, title: "food 2", menuCategory: .Food, orderCount: 12, price2: 12, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 13.00, title: "food 3", menuCategory: .Food, orderCount: 13, price2: 13, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 14.00, title: "food 4", menuCategory: .Food, orderCount: 14, price2: 14, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 15.00, title: "food 5", menuCategory: .Food, orderCount: 15, price2: 15, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 16.00, title: "food 6", menuCategory: .Food, orderCount: 16, price2: 16, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 17.00, title: "food 7", menuCategory: .Food, orderCount: 17, price2: 17, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 18.00, title: "food 8", menuCategory: .Food, orderCount: 18, price2: 18, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 19.00, title: "food 9", menuCategory: .Food, orderCount: 19, price2: 19, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 20.00, title: "food 10", menuCategory: .Food, orderCount: 20, price2: 20, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 21.00, title: "food 11", menuCategory: .Food, orderCount: 21, price2: 21, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
        MenuItemModel(id: UUID(), price: 22.00, title: "food 12", menuCategory: .Food, orderCount: 22, price2: 22, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]),
    ]
    
    @Published var drinkMenuItems: [MenuItemModel] = [
        MenuItemModel(id: UUID(), price: 11.00, title: "drink 1", menuCategory: .Drink, orderCount: 11, price2: 11, ingredient: [.Carbondioxide,.suger,]),
        MenuItemModel(id: UUID(), price: 12.00, title: "drink 2", menuCategory: .Drink, orderCount: 12, price2: 12, ingredient: [.Carbondioxide,.suger,]),
        MenuItemModel(id: UUID(), price: 13.00, title: "drink 3", menuCategory: .Drink, orderCount: 13, price2: 13, ingredient: [.Carbondioxide,.suger,]),
        MenuItemModel(id: UUID(), price: 14.00, title: "drink 4", menuCategory: .Drink, orderCount: 14, price2: 14, ingredient: [.Carbondioxide,.suger,]),
        MenuItemModel(id: UUID(), price: 15.00, title: "drink 5", menuCategory: .Drink, orderCount: 15, price2: 15, ingredient: [.Carbondioxide,.suger,]),
        MenuItemModel(id: UUID(), price: 16.00, title: "drink 6", menuCategory: .Drink, orderCount: 16, price2: 16, ingredient: [.Carbondioxide,.suger,]),
        MenuItemModel(id: UUID(), price: 17.00, title: "drink 7", menuCategory: .Drink, orderCount: 17, price2: 17, ingredient: [.Carbondioxide,.suger,]),
        MenuItemModel(id: UUID(), price: 18.00, title: "drink 8", menuCategory: .Drink, orderCount: 18, price2: 18, ingredient: [.Carbondioxide,.suger,]),
    ]
    
    @Published var dessertMenuItems: [MenuItemModel] = [
        MenuItemModel(id: UUID(), price: 11.00, title: "dessert 1", menuCategory: .Dessert, orderCount: 11, price2: 11, ingredient: [.eggs,.flour,.suger]),
        MenuItemModel(id: UUID(), price: 12.00, title: "dessert 2", menuCategory: .Dessert, orderCount: 12, price2: 12, ingredient: [.eggs,.flour,.suger]),
        MenuItemModel(id: UUID(), price: 13.00, title: "dessert 3", menuCategory: .Dessert, orderCount: 13, price2: 13, ingredient: [.eggs,.flour,.suger]),
        MenuItemModel(id: UUID(), price: 14.00, title: "dessert 4", menuCategory: .Dessert, orderCount: 14, price2: 14, ingredient: [.eggs,.flour,.suger]),
        MenuItemModel(id: UUID(), price: 15.00, title: "dessert 5", menuCategory: .Dessert, orderCount: 15, price2: 15, ingredient: [.eggs,.flour,.suger]),
        ]
}
