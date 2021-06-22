//
//  Meal.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Meal {
    var id = UUID()
    var name: String
    var image: String
    var mealType: MealType
    var isVegan: Bool
    var isPlanned: Bool
    var foods: [Food]
}

enum MealType {
    case cafeDaManha
    case almoco
    case lanche
    case janta
}
