//
//  LittleLemonExerciseApp.swift
//  LittleLemonExercise
//
//  Created by jj on 15/03/2025.
//

import SwiftUI

@main
struct LittleLemonExerciseApp: App {
    var body: some Scene {
        WindowGroup {
            MenuItemsView(item1 :MenuItemModel(id: UUID(), price: 11.00, title: "food 1", menuCategory: .Food, orderCount: 11, price2: 11, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]))
        }
    }
}
