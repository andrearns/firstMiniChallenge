//
//  Day.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Day {
    var id = UUID()
    var date: Date
    var plannedMeals: [MealType]
    var meals: [MealType: Meal?]
    var isFullyPlanned: Bool
}
