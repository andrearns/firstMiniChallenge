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

struct MealOption {
    var id = UUID()
    var name: String
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
    
    
var name: String {
    switch self {
    case .cafeDaManha:
        return "Café da Manhã"
    case .almoco:
        return "Almoço"
    case .lanche:
        return "Lanche"
    case .janta:
        return "Janta"
    default:
        return "Refeição"
    }
}


var colorName: String {
    switch self {
    case .cafeDaManha:
        return "CafeDaManhaTagColor"
    case .almoco:
        return "AlmocoTagColor"
    case .lanche:
        return "LancheTagColor"
    case .janta:
        return "JantaTagColor"
    default:
        return "RefeicaoTagColor"
    }
}

var imageName: String {
    switch self {
    case .cafeDaManha:
        return "iconCofee"
    case .almoco:
        return "iconLunch"
    case .lanche:
        return "iconSnack"
    case .janta:
        return "iconDinner"
    default:
        return "RefeicaoTagColor"
    }
}
    
}
