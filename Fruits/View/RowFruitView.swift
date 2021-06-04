//
//  RowFruitView.swift
//  Fruits
//
//  Created by DHV on 30/05/2021.
//

import SwiftUI

struct RowFruitView: View {
    var fruit: Fruit
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 80, height: 80, alignment:    .center)
                .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)

                )
                .cornerRadius(8)

            VStack (alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

struct RowFruitView_Previews: PreviewProvider {
    static var previews: some View {
        RowFruitView(fruit: fruitsData[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
