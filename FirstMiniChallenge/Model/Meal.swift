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
    
    
var name: String {
    switch self {
    case .breakfast:
        return "Café da Manhã"
    case .lunch:
        return "Almoço"
    case .snack:
        return "Lanche"
    case .dinner:
        return "Janta"
    default:
        return "Refeição"
    }
}


var colorName: String {
    switch self {
    case .breakfast:
        return "CafeDaManhaTagColor"
    case .lunch:
        return "AlmocoTagColor"
    case .snack:
        return "LancheTagColor"
    case .dinner:
        return "JantaTagColor"
    default:
        return "RefeicaoTagColor"
    }
}

var imageName: String {
    switch self {
    case .breakfast:
        return "iconCofee"
    case .lunch:
        return "iconLunch"
    case .snack:
        return "iconSnack"
    case .dinner:
        return "iconDinner"
    default:
        return "RefeicaoTagColor"
    }
}
var topBackName: String {
    switch self {
    case .cafeDaManha:
        return "Top_Breakfast"
    case .almoco:
        return "Top_Lunch"
    case .lanche:
        return "Top_Snack"
    case .janta:
        return "Top_Dinner"
    default:
        return "RefeicaoFundo"
        }
    }
}
