//
//  OnboardingView.swift
//  Fruits
//
//  Created by DHV on 29/05/2021.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView{
            ForEach(fruits[0...12]) { item in
                FruitCardView(fruit: item)
//                Text("Hello")
            }
           
        }//tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
