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

struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView(meal: Meal(imageName: "Meal_Breakfast_1_8", type: .breakfast, option: appData.breakfastOptions[0], diet: .regular, isPlanned: true, foods: [
                Food(name: "ovos", category: .carnesEOvos, diet: .veggie),
                Food(name: "PTS", category: .carnesEOvos, diet: .veggie),
                Food(name: "Seitan", category: .carnesEOvos, diet: .veggie),
                Food(name: "Frango", category: .carnesEOvos, diet: .regular),
        ], hasDrink: true, hasFruitOutsidePlate: false))
    }
}
