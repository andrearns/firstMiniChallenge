//
//  planDay.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 23/06/21.
//

import Foundation

func planDay(isBreakfastEnabled: Bool, isLunchEnabled: Bool, isSnackEnabled: Bool, isDinnerEnabled: Bool, diet: Diet, feijoes: [Food], cereais: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food]) -> Day {
    
    var meals: [Meal] = []
    var plannedMeals: [MealType] = []
    var isFullyPlanned = false
    
    if isBreakfastEnabled {
        meals.append(generateMeal(type: .cafeDaManha, mealOption: data.breakfastOption1, diet: data.diet, feijoes: data.feijoes, cereais: data.cereais, raizesETuberculos: data.raizesETuberculos, legumesEVerduras: data.legumesEVerduras, frutas: data.frutas, castanhasENozes: data.castanhasENozes, leitesEQueijos: data.leitesEQueijos, carnesEOvos: data.carnesEOvos))
    }
    if isLunchEnabled {
        meals.append(generateMeal(type: .almoco, mealOption: data.lunchOption1, diet: data.diet, feijoes: data.feijoes, cereais: data.cereais, raizesETuberculos: data.raizesETuberculos, legumesEVerduras: data.legumesEVerduras, frutas: data.frutas, castanhasENozes: data.castanhasENozes, leitesEQueijos: data.leitesEQueijos, carnesEOvos: data.carnesEOvos))
    }
    if isSnackEnabled {
        meals.append(generateMeal(type: .lanche, mealOption: data.breakfastOption1, diet: data.diet, feijoes: data.feijoes, cereais: data.cereais, raizesETuberculos: data.raizesETuberculos, legumesEVerduras: data.legumesEVerduras, frutas: data.frutas, castanhasENozes: data.castanhasENozes, leitesEQueijos: data.leitesEQueijos, carnesEOvos: data.carnesEOvos))
    }
    if isDinnerEnabled {
        meals.append(generateMeal(type: .janta, mealOption: data.lunchOption1, diet: data.diet, feijoes: data.feijoes, cereais: data.cereais, raizesETuberculos: data.raizesETuberculos, legumesEVerduras: data.legumesEVerduras, frutas: data.frutas, castanhasENozes: data.castanhasENozes, leitesEQueijos: data.leitesEQueijos, carnesEOvos: data.carnesEOvos))
    }
    
    for i in 0..<meals.count {
        switch meals[i].type {
        case .cafeDaManha:
            plannedMeals.append(.cafeDaManha)
        case .almoco:
            plannedMeals.append(.almoco)
        case .lanche:
            plannedMeals.append(.lanche)
        case .janta:
            plannedMeals.append(.janta)
        default:
            print("Nenhum tipo atribuido")
        }
    }
    
    if plannedMeals.count > 3 {
        isFullyPlanned = true
    }
    
    let plannedDay = Day(date: Date(), plannedMeals: plannedMeals, meals: meals, isFullyPlanned: isFullyPlanned)
    
    print(plannedDay)
    
    return plannedDay
}
