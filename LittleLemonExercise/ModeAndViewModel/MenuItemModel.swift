//
//  MenuItem.swift
//  LittleLemonExercise
//
//  Created by jj on 16/03/2025.
//
import Foundation

struct MenuItemModel: MenuItemProtocol  {
    var id: UUID
    
    var price: Double
    
    var title: String
    
    var menuCategory: MenuCategory
    
    var orderCount: Int
    
    var price2: Int
    
    var ingredient: [Ingredient]
    
    
}
