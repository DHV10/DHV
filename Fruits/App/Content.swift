//
//  Content.swift
//  Fruits
//
//  Created by DHV on 30/05/2021.
//

import SwiftUI

struct Content: View {
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List {

                ForEach(fruits.shuffled()) { item in
                    NavigationLink( destination: FruitDetailView(fruit: item))
                       {
                        RowFruitView(fruit: item)
                            .padding(.vertical,4)
                    }
                  
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented : $isShowingSettings) {
                    SettingsView()
                }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        Content()
    }
}
