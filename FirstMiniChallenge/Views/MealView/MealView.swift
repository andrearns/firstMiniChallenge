//
//  MealView.swift
//  FirstMiniChallenge
//
//  Created by Ana C S Costa on 25/06/21.
//

import SwiftUI

struct MealView: View {
    let meal: Meal

    var body: some View {
        NavigationView {
            ZStack {
                VStack (alignment: .leading) {
                    ScrollView {
                        VStack {
                            TopMealView(meal: meal)
                                .padding(.bottom, 40)
                            ForEach(meal.foods, id: \.self) { food in
                                FoodView(food: food)
                            }
                        }
                        .padding(.bottom, 40)
                    }
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}
