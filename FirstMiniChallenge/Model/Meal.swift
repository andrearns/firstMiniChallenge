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
    var imageName: String
    var type: MealType
    var option: MealOption
    var diet: Diet
    var isPlanned: Bool
    var foods: [Food]
}

struct MealOption {
    var id = UUID()
    var name: String
    var type: MealType
    var imageName: String
    var categoriesIncluded: [Category]
}

enum Diet {
    case regular
    case veggie
    case none
}

enum MealType {
    case cafeDaManha
    case almoco
    case lanche
    case janta
    case none
}
