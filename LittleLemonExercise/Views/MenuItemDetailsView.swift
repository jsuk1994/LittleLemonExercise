//
//  MenuItemDetailView.swift
//  LittleLemonExercise
//
//  Created by jj on 16/03/2025.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var itemModel: MenuItemModel
    
    var body: some View {
        NavigationView {
            VStack{
                Image("LittleLemonlogo")
                    .resizable()
                    .frame(width: 200, height: 300)
                
                Text("Price:").bold()
                Text(String(itemModel.price))
                Text("Ordered:").bold()
                Text(String(itemModel.orderCount))
                Text("Ingredients:").bold()
                VStack{
                    ForEach(itemModel.ingredient, id: \.self){ i in Text(i.rawValue)}
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
    MenuItemDetailsView(itemModel: MenuItemModel(id: UUID(), price: 1.00, title: "food 1", menuCategory: .Food, orderCount: 10, price2: 11, ingredient: [.Broccoli,.Carrot,.Pasta,.Spinach,.TomatoSauce]))
}
