//
//  ContentView.swift
//  Fructus
//
//  Created by David Eduardo Batista on 28/06/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    @State private var isShowingSettings: Bool = false
    let fruits: [Fruit] = fruitsData
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing: Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//: BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                     SettingsView()
                    }
            
            )
        }//: NAVIGATION
    }
}

#Preview {
    ContentView()
}
