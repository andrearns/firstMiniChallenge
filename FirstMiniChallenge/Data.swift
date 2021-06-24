//
//  Data.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 23/06/21.
//

import Foundation

var data = Data()

struct Data {
    var username: String = "André"
    var diet: Diet = .regular
    var today = Date()
    
    var allFeijoes: [Food] = [
        Food(name: "Feijão preto", category: .feijoes, diet: .veggie),
        Food(name: "Feijão carioca", category: .feijoes, diet: .veggie)
    ]
    
    var allCereais: [Food] = [
        Food(name: "Arroz integral", category: .cereais, diet: .veggie),
        Food(name: "Arroz branco", category: .cereais, diet: .veggie),
        Food(name: "Milho", category: .cereais, diet: .veggie),
        Food(name: "Pão", category: .cereais, diet: .veggie),
        Food(name: "Aveia", category: .cereais, diet: .veggie)
    ]
    
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
    
    var selectedFeijoes: [Food] = [
        Food(name: "Feijão preto", category: .feijoes, diet: .veggie),
    ]
    
    var selectedCereais: [Food] = [
        Food(name: "Arroz integral", category: .cereais, diet: .veggie),
        Food(name: "Pão", category: .cereais, diet: .veggie),
    ]
    
    var selectedRaizesETuberculos: [Food] = [
        Food(name: "Batata", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Mandioca", category: .raizesETuberculos, diet: .veggie),
    ]
    
    var selectedLegumesEVerduras: [Food] = [
        Food(name: "Abóbora", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Abobrinha", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Alface", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Berinjela", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Beterraba", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Brócolis", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Cenoura", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Couve", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Pepino", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Quiabo", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Tomate", category: .legumesEVerduras, diet: .veggie)]
    
    var selectedFrutas: [Food] = [
        Food(name: "Abacate", category: .frutas, diet: .veggie),
        Food(name: "Abacaxi", category: .frutas, diet: .veggie),
        Food(name: "Banana", category: .frutas, diet: .veggie),
        Food(name: "Manga", category: .frutas, diet: .veggie),
        Food(name: "Tangerina", category: .frutas, diet: .veggie),
        Food(name: "Uva", category: .frutas, diet: .veggie)
    ]
    
    var selectedCastanhasENozes: [Food] = [
        Food(name: "Castanha de caju", category: .castanhasENozes, diet: .veggie),
        Food(name: "Amendoas defumadas", category: .castanhasENozes, diet: .veggie),
    ]
    
    var selectedLeitesEQueijos: [Food] = [
        Food(name: "Queijo", category: .leiteEQueijos, diet: .veggie),
        Food(name: "Iogurte", category: .leiteEQueijos, diet: .veggie)
    ]
    
    var selectedCarnesEOvos: [Food] = [
        Food(name: "ovos", category: .carnesEOvos, diet: .veggie),
        Food(name: "Frango", category: .carnesEOvos, diet: .regular),
        Food(name: "Carne bovina", category: .carnesEOvos, diet: .regular),
        Food(name: "Peixe", category: .carnesEOvos, diet: .regular)
    ]
    
    var mealOptions: [MealOption] = [
        MealOption(name: "Opção 1 - Café da Manhã", imageName: "option1-breakfast", categoriesIncluded: [.frutas, .cereais]),
        MealOption(name: "Opção 1 - Almoço", imageName: "option1-lunch", categoriesIncluded: [.cereais, .feijoes, .legumesEVerduras, .carnesEOvos])
    ]
    
    var week = Week(startDate: NSDate(timeIntervalSinceReferenceDate: 1624406400000) as Date, endDate: NSDate(timeIntervalSinceReferenceDate: 1624924800000) as Date, isFullyPlanned: false, days: [
        Day(name: "23/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624406400000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true, isFullyPlanned: false),
        Day(name: "24/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624492800000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true, isFullyPlanned: false),
        Day(name: "25/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624579200000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true, isFullyPlanned: false),
        Day(name: "26/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624665600000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true, isFullyPlanned: false),
        Day(name: "27/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624752000000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true, isFullyPlanned: false),
        Day(name: "28/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624838400000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true, isFullyPlanned: false),
        Day(name: "29/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624924800000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true, isFullyPlanned: false),
    ])
}
