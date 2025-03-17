//
//  MenuItemsOptionView.swift
//  LittleLemonExercise
//
//  Created by jj on 16/03/2025.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    Section("SELECTED CATEGORIES") {
                        Text("Food")
                        Text("Drink")
                        Text("Dessert")
                    }
            
                    Section("SORT BY") {
                        Text("Most Popular")
                        Text("Price $$$")
                        Text("A - Z")
                    }
                    .listStyle(.inset)
                }
            }
            .navigationTitle("Fitler")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done"){
                        presentationMode.wrappedValue.dismiss()
                    }
                    .font(.title3)
                }
            }
        }
    }
}


#Preview {
    MenuItemsOptionView()
}

