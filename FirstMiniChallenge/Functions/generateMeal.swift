//
//  generateMeal.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

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

    // Gera o nome somando o nome de todos os componentes do prato
    var name: String = ""
    
    for i in 0..<foods.count {
        if i != foods.count - 1 {
            name += "\(foods[i].name), "
        } else {
            name += "\(foods[i].name)"
        }
    }
    
    let meal = Meal(name: name, imageName: mealOption.imageName, type: type, option: mealOption, diet: diet, isPlanned: true, foods: foods)
    
    print("________________________________________")
    print("Refeição: \(meal.type)")
    print(meal)
    return meal
}


func sortFood(in category: Category, foods: [Food]) -> Food {
    let array = foods
    let sortedFood = array.randomElement()
    return sortedFood!
}
