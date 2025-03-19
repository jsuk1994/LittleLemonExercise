//
//  MenuItemProtocol.swift
//  LittleLemonExercise
//
//  Created by jj on 16/03/2025.
//
import Foundation

protocol MenuItemProtocol: Identifiable {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var orderCount: Int { get set }
    var price2: Int { get set }
    var ingredient: [Ingredient] { get set }
}
