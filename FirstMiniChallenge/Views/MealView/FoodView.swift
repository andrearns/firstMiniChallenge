//
//  FoodView.swift
//  FirstMiniChallenge
//
//  Created by Ana C S Costa on 27/06/21.
//

import SwiftUI

struct FoodView: View {
    var food: Food

    var body: some View {
        HStack {
            Image(food.category.iconTypeFood)
                .frame(width: 76, height: 76)
                .padding(.leading, 15)
                .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                .scaleEffect(CGSize(width: 0.5, height: 0.5))

            VStack (alignment: .leading) {
                Text(food.name)
                .foregroundColor(.primary)
                .bold()
                .font(.headline)
                    .padding(.bottom, 5)
                Text(food.category.textTypeFood)
                    .foregroundColor(.secondary)
                    .font(.caption)
            }
            Spacer()
            Button(action: {
                print(food)
            }) {
                Image(systemName: "arrow.clockwise")
                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .font(Font.system(size: 18, weight: .bold))
                    .padding()
                    .foregroundColor(.secondary)
            }
            
        }
        .padding(.top)
        

    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(food: appData.allCarnesEOvos[0])
    }
}
