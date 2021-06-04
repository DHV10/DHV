//
//  CardView.swift
//  Fruits
//
//  Created by DHV on 29/05/2021.
//

import SwiftUI

struct FruitCardView: View {
    
    @State private var isAnimating:Bool = false
    var fruit: Fruit
    var body: some View {
        ZStack {
            
            VStack(spacing: 20) {
                //fruit image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.1)
                //fruit title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15), radius:2, x: 2, y: 2)
                //fruit: headline
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //button start
                StartButtonView()
            }
        }
        
        .onAppear {
            withAnimation(.easeOut(duration: 2)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0 , maxWidth: .infinity, minHeight: 0, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}


struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
        //            .previewLayout(.sizeThatFits)
    }
}
