//
//  MenuItemDetailView.swift
//  LittleLemonExercise
//
//  Created by jj on 16/03/2025.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var item1: MenuItemModel
    
    
    
    var body: some View {
        NavigationView {
            VStack{
                Image("LittleLemonlogo")
                    .resizable()
                    .frame(width: 200, height: 300)
                
                Text("Price:")
                Text(String(item1.price))
                Text("Ordered:")
                Text(String(item1.orderCount))
                Text("Ingredients:")
                VStack{
                    ForEach(item1.ingredient, id: \.self){ i in Text(i.rawValue)}
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done"){
                        presentationMode.wrappedValue.dismiss()
                    }
                    .font(.title3)
                    .padding()
                }
            }
        }
    }
}

#Preview {
    MenuItemDetailsView(item1: MenuItemModel(id: UUID(), price: 11.00, title: "food 1", menuCategory: .Food, orderCount: 11, price2: 11, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]))
}
