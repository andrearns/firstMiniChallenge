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
    var diet: Diet
    var isPlanned: Bool
    var foods: [Food]
}

enum Diet {
    case regular
    case veggie
}

enum MealType {
    case cafeDaManha
    case almoco
    case lanche
    case janta
}
