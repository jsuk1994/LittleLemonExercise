//
//  UnitTestingMenuItem.swift
//  LittleLemonExercise
//
//  Created by jj on 30/03/2025.
//
import Foundation

class UnitTestingMenuItem: ObservableObject {
    
        @Published var foodMenuItems: MenuItemModel = MenuItemModel(
            id: UUID(),
            price: 11.00,
            title: "food 1",
            menuCategory: .Food, orderCount: 11,
            price2: 11,
            ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce])
    
}
