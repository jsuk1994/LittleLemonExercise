//
//  UnitTestingLittleLemon_Test.swift
//  LittleLemonExercise_Tests
//
//  Created by jj on 30/03/2025.
//

import XCTest
@testable import LittleLemonExercise

final class UnitTestingLittleLemon_Test: XCTestCase {
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_menuItemModel_title_isEqualsToInitializedString(){
        
        let title = "Greek Salad"
        
        var viewModel = MenuItemModel(
            id: UUID(),
            price: 11.00,
            title: title,
            menuCategory: .Food,
            orderCount: 110,
            price2: 11,
            ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce])
        
        XCTAssertEqual(viewModel.title, title)
  
    }
    
    func test_menuItemModel_ingredient_isEqualsToInitializedString(){
        
        let ingredients: [Ingredient] = [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce
        ]
        var viewModel = MenuItemModel(
            id: UUID(),
            price: 11.00,
            title: "food 1",
            menuCategory: .Food,
            orderCount: 110,
            price2: 11,
            ingredient: ingredients)
    
        
        XCTAssertEqual(viewModel.ingredient, ingredients)
  
    }
    
}

