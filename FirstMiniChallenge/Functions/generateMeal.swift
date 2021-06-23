//
//  generateMeal.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

func generateMeal(type: MealType, mealOption: MealOption, diet: Diet, feijoes: [Food], cereais: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food]) -> Meal {
    
    var foods = [Food]()
    
    var categoriesIncluded = [Category]()
    var optionHasFeijao = false
    var optionHasCereais = false
    var optionHasRaizesETuberculos = false
    var optionHasLegumesEVerduras = false
    var optionHasFrutas = false
    var optionHasCastanhasENozes = false
    var optionHasLeitesEQueijos = false
    var optionHasCarnesEOvos = false
    
    for i in 0..<mealOption.categoriesIncluded.count {
        switch mealOption.categoriesIncluded[i] {
        case .feijoes:
            optionHasFeijao = true
            categoriesIncluded.append(.feijoes)
            foods.append(sortFood(in: .feijoes, foods: feijoes))
        case .cereais:
            optionHasCereais = true
            categoriesIncluded.append(.cereais)
            foods.append(sortFood(in: .cereais, foods: cereais))
        case .raizesETuberculos:
            optionHasRaizesETuberculos = true
            categoriesIncluded.append(.raizesETuberculos)
            foods.append(sortFood(in: .raizesETuberculos, foods: raizesETuberculos))
        case .legumesEVerduras:
            optionHasLegumesEVerduras = true
            categoriesIncluded.append(.legumesEVerduras)
            foods.append(sortFood(in: .legumesEVerduras, foods: legumesEVerduras))
            foods.append(sortFood(in: .legumesEVerduras, foods: legumesEVerduras))
        case .frutas:
            optionHasFrutas = true
            categoriesIncluded.append(.frutas)
            foods.append(sortFood(in: .frutas, foods: frutas))
        case .castanhasENozes:
            optionHasCastanhasENozes = true
            categoriesIncluded.append(.castanhasENozes)
            foods.append(sortFood(in: .castanhasENozes, foods: castanhasENozes))
        case .leiteEQueijos:
            optionHasLeitesEQueijos = true
            categoriesIncluded.append(.leiteEQueijos)
            foods.append(sortFood(in: .leiteEQueijos, foods: leitesEQueijos))
        case .carnesEOvos:
            optionHasCarnesEOvos = true
            categoriesIncluded.append(.carnesEOvos)
            foods.append(sortFood(in: .carnesEOvos, foods: carnesEOvos))
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
    
    let meal = Meal(name: name, imageName: mealOption.imageName, type: type, diet: diet, isPlanned: true, foods: foods)
    
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
