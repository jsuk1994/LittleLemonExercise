//
//  MenuItemDetailView.swift
//  LittleLemonExercise
//
//  Created by jj on 16/03/2025.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack{
                Image("LittleLemonlogo")
                    .resizable()
                    .frame(width: 200, height: 300)
                
                Text("Price:")
                Text("10.99")
                Text("Ordered:")
                Text("1,000")
                Text("Ingredients:")
                Text("spinach,\nbrocloy,\ncarrot")
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
    MenuItemDetailsView()
}
