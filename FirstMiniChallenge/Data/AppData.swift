//
//  AppData.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 28/06/21.
//

import Foundation

var appData = AppData()

struct AppData {
    
    var allFeijoes: [Food] = [
        Food(name: "Feijão preto", category: .feijoes, diet: .veggie),
        Food(name: "Feijão carioca", category: .feijoes, diet: .veggie)
    ]
    
    var allCereais: [Food] = [
        Food(name: "Milho", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Pão", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Aveia", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Arroz integral", category: .cereaisAlmocoEJanta, diet: .veggie),
        Food(name: "Arroz branco", category: .cereaisAlmocoEJanta, diet: .veggie),
    ]
    
    var allCereaisCafeDaManha: [Food]{
        allCereais.filter({
            $0.category == .cereaisCafeELanche
        })
    }

    
    var allCereaisAlmocoEJanta: [Food]{
        allCereais.filter({
            $0.category == .cereaisAlmocoEJanta
        })
    }
    
    
    var allRaizesETuberculos: [Food] = [
        Food(name: "Batata", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Mandioca", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Batata doce", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Inhame", category: .raizesETuberculos, diet: .veggie)
    ]
    
    var allLegumesEVerduras: [Food] = [
        Food(name: "Abóbora", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Abobrinha", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Acelga", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Agrião", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Alface", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Almeirão", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Berinjela", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Beterraba", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Brócolis", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Cenoura", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Chicória", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Chuchu", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Couve", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Espinafre", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Jiló", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Folhas de Mostarda", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Ora-pro-nóbis", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Pepino", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Pimentão", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Quiabo", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Repolho", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Tomate", category: .legumesEVerduras, diet: .veggie)]
    
    var allFrutas: [Food] = [
        Food(name: "Abacate", category: .frutas, diet: .veggie),
        Food(name: "Abacaxi", category: .frutas, diet: .veggie),
        Food(name: "Acerola", category: .frutas, diet: .veggie),
        Food(name: "Ameixa", category: .frutas, diet: .veggie),
        Food(name: "Amora", category: .frutas, diet: .veggie),
        Food(name: "Banana", category: .frutas, diet: .veggie),
        Food(name: "Cacau", category: .frutas, diet: .veggie),
        Food(name: "Caqui", category: .frutas, diet: .veggie),
        Food(name: "Carambola", category: .frutas, diet: .veggie),
        Food(name: "Cupuaçú", category: .frutas, diet: .veggie),
        Food(name: "Figo", category: .frutas, diet: .veggie),
        Food(name: "Jabuticaba", category: .frutas, diet: .veggie),
        Food(name: "Jaca", category: .frutas, diet: .veggie),
        Food(name: "Jenipapo", category: .frutas, diet: .veggie),
        Food(name: "Laranja", category: .frutas, diet: .veggie),
        Food(name: "Limão", category: .frutas, diet: .veggie),
        Food(name: "Maçã", category: .frutas, diet: .veggie),
        Food(name: "Mamão", category: .frutas, diet: .veggie),
        Food(name: "Manga", category: .frutas, diet: .veggie),
        Food(name: "Maracujá", category: .frutas, diet: .veggie),
        Food(name: "Pitanga", category: .frutas, diet: .veggie),
        Food(name: "Romã", category: .frutas, diet: .veggie),
        Food(name: "Tangerina", category: .frutas, diet: .veggie),
        Food(name: "Uva", category: .frutas, diet: .veggie)
    ]
    
    var allCastanhasENozes: [Food] = [
        Food(name: "Castanha de caju", category: .castanhasENozes, diet: .veggie),
        Food(name: "Amendoas defumadas", category: .castanhasENozes, diet: .veggie),
        Food(name: "Nozes", category: .castanhasENozes, diet: .veggie),
        Food(name: "Amendoim", category: .castanhasENozes, diet: .veggie)
    ]
    
    var allLeitesEQueijos: [Food] = [
        Food(name: "Leite de vaca", category: .leiteEQueijos, diet: .veggie),
        Food(name: "Queijo", category: .leiteEQueijos, diet: .veggie),
        Food(name: "Iogurte", category: .leiteEQueijos, diet: .veggie)
    ]
    
    var allCarnesEOvos: [Food] = [
        Food(name: "ovos", category: .carnesEOvos, diet: .veggie),
        Food(name: "PTS", category: .carnesEOvos, diet: .veggie),
        Food(name: "Seitan", category: .carnesEOvos, diet: .veggie),
        Food(name: "Frango", category: .carnesEOvos, diet: .regular),
        Food(name: "Carne bovina", category: .carnesEOvos, diet: .regular),
        Food(name: "Carne de porco", category: .carnesEOvos, diet: .regular),
        Food(name: "Peixe", category: .carnesEOvos, diet: .regular)
    ]
    
    var breakfastOptions: [MealOption] = [
        MealOption(name: "Opção 1 - Café da Manhã", type: .breakfast, imageName: "Meal_Breakfast_1_8", categoriesIncluded: [.bebidas, .frutas, .cereaisCafeELanche], hasDrink: true, hasFruitOutsidePlate: false),
        MealOption(name: "Opção 3 - Café da Manhã", type: .breakfast, imageName: "Meal_Breakfast_3", categoriesIncluded: [.bebidas, .frutas, .leiteEQueijos, .cereaisCafeELanche], hasDrink: true, hasFruitOutsidePlate: false),
        MealOption(name: "Opção 5 - Café da Manhã", type: .breakfast, imageName: "Meal_Breakfast_5", categoriesIncluded: [.bebidas, .frutas, .leiteEQueijos], hasDrink: true, hasFruitOutsidePlate: false),
    ]
    
    var lunchOptions: [MealOption] = [
        MealOption(name: "Opção 1 - Almoço", type: .lunch, imageName: "Meal_Lunch_1", categoriesIncluded: [.feijoes, .cereaisAlmocoEJanta, .legumesEVerduras, .frutas], hasDrink: false, hasFruitOutsidePlate: true),
        MealOption(name: "Opção 2 - Almoço", type: .lunch, imageName: "Meal_Lunch_2", categoriesIncluded: [.feijoes, .cereaisAlmocoEJanta, .legumesEVerduras, .carnesEOvos, .frutas], hasDrink: false, hasFruitOutsidePlate: true),
        MealOption(name: "Opção 3 - Almoço", type: .lunch, imageName: "Meal_Lunch_3", categoriesIncluded: [.feijoes, .cereaisAlmocoEJanta, .carnesEOvos, .legumesEVerduras], hasDrink: false, hasFruitOutsidePlate: false),
        MealOption(name: "Opção 4 - Almoço", type: .lunch, imageName: "Meal_Lunch_4", categoriesIncluded: [.raizesETuberculos, .feijoes, .legumesEVerduras, .carnesEOvos, .frutas], hasDrink: false, hasFruitOutsidePlate: true),
        MealOption(name: "Opção 5 - Almoço", type: .lunch, imageName: "Meal_Lunch_5", categoriesIncluded: [.feijoes, .cereaisAlmocoEJanta, .raizesETuberculos, .legumesEVerduras, .frutas], hasDrink: false, hasFruitOutsidePlate: true),
    ]
    
    var snackOptions: [MealOption] = [
        MealOption(name: "Opção 1 - Lanche", type: .snack, imageName: "Meal_Snack_1", categoriesIncluded: [.cereaisCafeELanche, .frutas], hasDrink: false, hasFruitOutsidePlate: false),
        MealOption(name: "Opção 2 - Lanche", type: .snack, imageName: "Meal_Snack_2", categoriesIncluded: [.castanhasENozes], hasDrink: false, hasFruitOutsidePlate: false),
        MealOption(name: "Opção 3 - Lanche", type: .snack, imageName: "Meal_Snack_3", categoriesIncluded: [.frutas], hasDrink: false, hasFruitOutsidePlate: false),
    ]
    
    var dinnerOptions: [MealOption] = [
        MealOption(name: "Opção 1 - Janta", type: .dinner, imageName: "Meal_Lunch_2", categoriesIncluded: [.cereaisAlmocoEJanta, .feijoes, .carnesEOvos, .frutas], hasDrink: false, hasFruitOutsidePlate: true),
        MealOption(name: "Opção 3 - Janta", type: .dinner, imageName: "Meal_Dinner_3", categoriesIncluded: [.legumesEVerduras, .carnesEOvos, .raizesETuberculos], hasDrink: false, hasFruitOutsidePlate: false),
        MealOption(name: "Opção 4 - Janta", type: .dinner, imageName: "Meal_Lunch_3", categoriesIncluded: [.cereaisAlmocoEJanta, .feijoes, .carnesEOvos], hasDrink: false, hasFruitOutsidePlate: false),
    ]
}
