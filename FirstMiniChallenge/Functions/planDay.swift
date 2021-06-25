//
//  planDay.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 23/06/21.
//

import Foundation

func planDay(day: Day, diet: Diet, feijoes: [Food], cereaisCafeELanche: [Food], cereaisAlmocoEJanta: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food], bebidas: [Food]) -> Day {
    
    var meals: [Meal] = []
    var plannedMeals: [MealType] = []
    var isPlanned = false
    var breakfast: Meal?
    var lunch: Meal?
    var snack: Meal?
    var dinner: Meal?
    
    if day.isBreakfastEnabled {
        breakfast = generateMeal(type: .cafeDaManha, mealOption: sortMealOption(mealOptions: data.breakfastOptions), diet: data.diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
        meals.append(breakfast!)
    }
    if day.isLunchEnabled {
        lunch = generateMeal(type: .almoco, mealOption: sortMealOption(mealOptions: data.lunchOptions), diet: data.diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
        meals.append(lunch!)
    }
    if day.isSnackEnabled {
        snack = generateMeal(type: .lanche, mealOption: sortMealOption(mealOptions: data.snackOptions), diet: data.diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
        meals.append(snack!)
    }
    if day.isDinnerEnabled {
        // Repeat lunch on dinner
        if day.isLunchEnabled {
            var repeatedLunch = lunch
            repeatedLunch?.type = .janta
            meals.append(repeatedLunch!)
        } else {
            dinner = generateMeal(type: .janta, mealOption: sortMealOption(mealOptions: data.dinnerOptions), diet: data.diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
            meals.append(dinner!)
        }
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
            print("Não existe nenhum tipo de refeição com esse nome")
        }
    }
    
    isPlanned = true
    
    let plannedDay = Day(name: day.name, date: day.date, plannedMeals: plannedMeals, meals: meals, isPlanned: isPlanned)
    print("________________________________________")
    print("Refeições do dia \(plannedDay.name):")
    print(plannedDay)
    
    return plannedDay
}

func sortMealOption(mealOptions: [MealOption]) -> MealOption {
    let array = mealOptions
    let sortedOption = array.randomElement()
    return sortedOption!
}
