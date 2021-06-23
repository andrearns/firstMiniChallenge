//
//  Day.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Day {
    var id = UUID()
    var name: String
    var date: Date
    var plannedMeals: [MealType]
    var meals: [Meal]
    var isBreakfastEnabled: Bool = false
    var isLunchEnabled: Bool = false
    var isSnackEnabled: Bool = false
    var isDinnerEnabled: Bool = false
    var isFullyPlanned: Bool
}
