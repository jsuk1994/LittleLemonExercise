//
//  MenuViewModel.swift
//  LittleLemonExercise
//
//  Created by jj on 16/03/2025.
//
import SwiftUI

class MenuItemMockData: ObservableObject  {
    
    @Published var food : [MenuItemModel] = [
        MenuItemModel(title: "food1", ingredient: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food2", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food3", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food4", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food5", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food6", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food7", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food8", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food9", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food10", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food11", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        MenuItemModel(title: "food12", ingredients: [.Broccoli, .Pasta, .Spinach, .TomatoSauce, .Carrot]),
        
    ]
    
    @Published var drink: [MenuItemModel] = [
        MenuItemModel(title: "drink1", ingredients: [.Carbondioxide, .suger]),
        MenuItemModel(title: "drink2", ingredients: [.Carbondioxide, .suger]),
        MenuItemModel(title: "drink3", ingredients: [.Carbondioxide, .suger]),
        MenuItemModel(title: "drink4", ingredients: [.Carbondioxide, .suger]),
        MenuItemModel(title: "drink5", ingredients: [.Carbondioxide, .suger]),
        MenuItemModel(title: "drink6", ingredients: [.Carbondioxide, .suger]),
        MenuItemModel(title: "drink7", ingredients: [.Carbondioxide, .suger]),
        MenuItemModel(title: "drink8", ingredients: [.Carbondioxide, .suger]),
        ]
    
    @Published var dessert: [MenuItemModel] = [
        MenuItemModel(title: "dessert1", ingredients: [.eggs, .flour, .suger]),
        MenuItemModel(title: "dessert2", ingredients: [.eggs, .flour, .suger]),
        MenuItemModel(title: "dessert3", ingredients: [.eggs, .flour, .suger]),
        MenuItemModel(title: "dessert4", ingredients: [.eggs, .flour, .suger]),
    ]
}
