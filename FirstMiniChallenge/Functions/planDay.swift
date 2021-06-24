//
//  planDay.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 23/06/21.
//

import Foundation

func planDay(day: Day, diet: Diet, feijoes: [Food], cereais: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food]) -> Day {
    
    var meals: [Meal] = []
    var plannedMeals: [MealType] = []
    var isFullyPlanned = false
    
    if day.isBreakfastEnabled {
        meals.append(generateMeal(type: .cafeDaManha, mealOption: data.mealOptions[0], diet: data.diet, feijoes: feijoes, cereais: cereais, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos))
    }
    if day.isLunchEnabled {
        meals.append(generateMeal(type: .almoco, mealOption: data.mealOptions[1], diet: data.diet, feijoes: feijoes, cereais: cereais, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos))
    }
    if day.isSnackEnabled {
        meals.append(generateMeal(type: .lanche, mealOption: data.mealOptions[0], diet: data.diet, feijoes: feijoes, cereais: cereais, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos))
    }
    if day.isDinnerEnabled {
        meals.append(generateMeal(type: .janta, mealOption: data.mealOptions[1], diet: data.diet, feijoes: feijoes, cereais: cereais, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos))
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
    
    isFullyPlanned = true
    
    let plannedDay = Day(name: day.name, date: day.date, plannedMeals: plannedMeals, meals: meals, isFullyPlanned: isFullyPlanned)
    print("________________________________________")
    print("Refeições do dia \(plannedDay.name):")
    print(plannedDay)
    
    return plannedDay
}
