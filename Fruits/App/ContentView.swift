//
//  ContentView.swift
//  Fruits
//
//  Created by DHV on 29/05/2021.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
//        NavigationView {
//            List {
//                ForEach(fruits.shuffled()) { item in
//                    RowFruitView(fruit: item)
//                        .padding(.vertical,4)
//                }
//            }
//            .navigationTitle("Fruits")
//        }
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
