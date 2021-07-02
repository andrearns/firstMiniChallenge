//
//  WeekManager.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 25/06/21.
//

import Foundation

class MealManager {
    
    static var shared = MealManager()
    
    func generateMeal(type: MealType, mealOption: MealOption, diet: Diet, feijoes: [Food], cereaisCafeELanche: [Food], cereaisAlmocoEJanta: [Food] , raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food], bebidas: [Food]) -> Meal {
        
        var foods = [Food]()
        
        var feijao: Food?
        var cerealCafeELanche: Food?
        var cerealAlmocoEJanta: Food?
        var raizETuberculo: Food?
        var legumeEVerdura1: Food?
        var legumeEVerdura2: Food?
        var fruta: Food?
        var castanhaENozes: Food?
        var leiteEQueijo: Food?
        var carneEOvos: Food?
        var bebida: Food?
        
        var categoriesIncluded = [Category]()
        var optionHasFeijao = false
        var optionHasCereaisCafeELanche = false
        var optionHasCereaisAlmocoEJanta = false
        var optionHasRaizesETuberculos = false
        var optionHasLegumesEVerduras = false
        var optionHasFrutas = false
        var optionHasCastanhasENozes = false
        var optionHasLeitesEQueijos = false
        var optionHasCarnesEOvos = false
        var optionHasBebidas = false
        
        for i in 0..<mealOption.categoriesIncluded.count {
            switch mealOption.categoriesIncluded[i] {
            case .feijoes:
                optionHasFeijao = true
                categoriesIncluded.append(.feijoes)
                feijao = sortFood(in: .feijoes, foods: feijoes)
                foods.append(feijao!)
            case .cereaisCafeELanche:
                optionHasCereaisCafeELanche = true
                categoriesIncluded.append(.cereaisCafeELanche)
                cerealCafeELanche = sortFood(in: .cereaisCafeELanche, foods: cereaisCafeELanche)
                foods.append(cerealCafeELanche!)
            case .cereaisAlmocoEJanta:
                optionHasCereaisAlmocoEJanta = true
                categoriesIncluded.append(.cereaisAlmocoEJanta)
                cerealAlmocoEJanta = sortFood(in: .cereaisAlmocoEJanta, foods: cereaisAlmocoEJanta)
                
                // Elimina a opção Macarrão se tem algum feijão no prato
                if optionHasFeijao {
                    while cerealAlmocoEJanta == Food(name: "Macarrão", category: .cereaisAlmocoEJanta, diet: .veggie) {
                        cerealAlmocoEJanta = sortFood(in: .cereaisAlmocoEJanta, foods: cereaisAlmocoEJanta)
                    }
                }
                foods.append(cerealAlmocoEJanta!)
            case .raizesETuberculos:
                optionHasRaizesETuberculos = true
                categoriesIncluded.append(.raizesETuberculos)
                raizETuberculo = sortFood(in: .raizesETuberculos, foods: raizesETuberculos)
                foods.append(raizETuberculo!)
            case .legumesEVerduras:
                optionHasLegumesEVerduras = true
                categoriesIncluded.append(.legumesEVerduras)
                legumeEVerdura1 = sortFood(in: .legumesEVerduras, foods: legumesEVerduras)
                legumeEVerdura2 = sortFood(in: .legumesEVerduras, foods: legumesEVerduras)
                
                // Impede que os legumes e verduras se repitam na mesma refeição
                while legumeEVerdura1 == legumeEVerdura2 {
                    legumeEVerdura2 = sortFood(in: .legumesEVerduras, foods: legumesEVerduras)
                }
                foods.append(legumeEVerdura1!)
                foods.append(legumeEVerdura2!)
            case .frutas:
                optionHasFrutas = true
                categoriesIncluded.append(.frutas)
                fruta = sortFood(in: .frutas, foods: frutas)
                foods.append(fruta!)
            case .castanhasENozes:
                optionHasCastanhasENozes = true
                categoriesIncluded.append(.castanhasENozes)
                castanhaENozes = sortFood(in: .castanhasENozes, foods: castanhasENozes)
                foods.append(castanhaENozes!)
            case .leiteEQueijos:
                optionHasLeitesEQueijos = true
                categoriesIncluded.append(.leiteEQueijos)
                leiteEQueijo = sortFood(in: .leiteEQueijos, foods: leitesEQueijos)
                foods.append(leiteEQueijo!)
            case .carnesEOvos:
                optionHasCarnesEOvos = true
                categoriesIncluded.append(.carnesEOvos)
                carneEOvos = sortFood(in: .carnesEOvos, foods: carnesEOvos)
                foods.append(carneEOvos!)
            case .bebidas:
                optionHasBebidas = true
                categoriesIncluded.append(.bebidas)
                bebida = sortFood(in: .bebidas, foods: bebidas)
                foods.append(bebida!)
            default:
                print("Não existe nenhuma categoria com esse nome")
            }
        }

        let meal = Meal(imageName: mealOption.imageName, type: type, option: mealOption, diet: diet, isPlanned: true, foods: foods, hasDrink: mealOption.hasDrink, hasFruitOutsidePlate: mealOption.hasFruitOutsidePlate)
    
        return meal
    }


    func sortFood(in category: Category, foods: [Food]) -> Food {
        let array = foods
        let sortedFood = array.randomElement()
        return sortedFood!
    }

    func planDay(day: Day, diet: Diet, feijoes: [Food], cereaisCafeELanche: [Food], cereaisAlmocoEJanta: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food], bebidas: [Food]) -> Day {
        
        var meals: [Meal] = []
        var isPlanned = false
        
        // Cria o café da manhã
        let breakfast = generateMeal(type: .breakfast, mealOption: sortMealOption(mealOptions: appData.breakfastOptions), diet: diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
        meals.append(breakfast)
        
        // Cria o almoço
        let lunch = generateMeal(type: .lunch, mealOption: sortMealOption(mealOptions: appData.lunchOptions), diet: diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
        meals.append(lunch)
        
        // Cria o lanche
        let snack = generateMeal(type: .snack, mealOption: sortMealOption(mealOptions: appData.snackOptions), diet: diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
        meals.append(snack)
        
        // Cria a janta baseado no almoço
        let dinner = Meal(imageName: lunch.imageName, type: .dinner, option: lunch.option, diet: lunch.diet, isPlanned: true, foods: lunch.foods, hasDrink: lunch.hasDrink, hasFruitOutsidePlate: lunch.hasFruitOutsidePlate)
        meals.append(dinner)
        
        isPlanned = true
        
        let plannedDay = Day(isSelected: false, date: day.date, meals: meals, isPlanned: isPlanned)
        return plannedDay
    }

    func sortMealOption(mealOptions: [MealOption]) -> MealOption {
        let array = mealOptions
        let sortedOption = array.randomElement()
        return sortedOption!
    }
    
    func planWeek(week: Week, diet: Diet, feijoes: [Food], cereaisCafeELanche: [Food], cereaisAlmocoEJanta: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food], bebidas: [Food]) -> Week{
        
        let firstDay: Date = week.days[0].date
        var isPlanned = false
        
        var days: [Day] = []
        
        for i in 0..<week.days.count {
            days.append(planDay(day: week.days[i], diet: diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas))
        }
        
        isPlanned = true
        
        let plannedWeek = Week(startDate: firstDay, isPlanned: isPlanned, days: days)
        return plannedWeek
    }
}
