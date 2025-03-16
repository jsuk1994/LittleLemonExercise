//
//  TestView.swift
//  LittleLemonExercise
//
//  Created by jj on 16/03/2025.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        VStack{
            Text("SELECTED CATEGORIES")
            
                .frame(width: 370, height: 40, alignment: .leading)
            
            List {
                Text("Food")
                Text("Drink")
                Text("Dessert")
                
            }
            .listStyle(.grouped)
            
            List{
                Section("selecet") {
                    Text("Food")
                    Text("Drink")
                    Text("Dessert")
                }
            }
        }
    }
}

#Preview {
    TestView()
}
