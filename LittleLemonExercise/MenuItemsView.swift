//
//  ContentView.swift
//  LittleLemonExercise
//
//  Created by jj on 15/03/2025.
//

import SwiftUI

struct MenuItemsView: View {
    var body: some View {
        ScrollView {
            NavigationView {
                Text("item")
                    .navigationTitle("Menu")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink(destination: Text("viwe")) {
                                Image(systemName: "house")
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    MenuItemsView()
}
