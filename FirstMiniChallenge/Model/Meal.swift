//
//  Meal.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Meal: Identifiable {
    var id = UUID()
    var name: String {
        var n: String = ""
        
        for i in 0..<foods.count {
            if i != foods.count - 1 {
                n += "\(foods[i].name), "
            } else {
                n += "\(foods[i].name)"
            }
        }
        return n
    }
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
    case breakfast
    case lunch
    case snack
    case dinner
    case none
}
