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
        Food(name: "Feijão carioca", category: .feijoes, diet: .veggie),
        Food(name: "Feijão mulatinho", category: .feijoes, diet: .veggie),
        Food(name: "Ervilha", category: .feijoes, diet: .veggie),
        Food(name: "Lentilha", category: .feijoes, diet: .veggie),
        Food(name: "Grão-de-bico", category: .feijoes, diet: .veggie),
        Food(name: "Feijoada", category: .feijoes, diet: .regular),
    ]
    
    var allCereaisCafeELanche: [Food] = [
        Food(name: "Milho", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Bolo de milho", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Bolo de laranja", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Bolo de fubá", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Bolo salgado", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Bolo de mandioca", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Pão integral com queijo", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Pão com ricota", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Pão de queijo", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Pão com manteiga", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Aveia", category: .cereaisCafeELanche, diet: .veggie),
        Food(name: "Cuscuz", category: .cereaisCafeELanche, diet: .veggie),
    ]
    
    var allCereaisAlmocoEJanta: [Food] = [
        Food(name: "Arroz integral", category: .cereaisAlmocoEJanta, diet: .veggie),
        Food(name: "Arroz branco", category: .cereaisAlmocoEJanta, diet: .veggie),
        Food(name: "Macarrão", category: .cereaisAlmocoEJanta, diet: .veggie),
        Food(name: "Lasanha", category: .cereaisAlmocoEJanta, diet: .veggie),
        Food(name: "Empadão", category: .cereaisAlmocoEJanta, diet: .veggie),
        Food(name: "Farinha de milho", category: .cereaisAlmocoEJanta, diet: .veggie),
    ]
    
    var allRaizesETuberculos: [Food] = [
        Food(name: "Batata", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Batata-doce", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Mandioca", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Inhame", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Farinha de mandioca", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Polenta", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Angu", category: .raizesETuberculos, diet: .veggie),
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
        Food(name: "Ora-pro-nóbis", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Pepino", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Pimentão", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Quiabo", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Repolho", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Tomate", category: .legumesEVerduras, diet: .veggie)
    ]
    
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
        Food(name: "Mix de castabhas", category: .castanhasENozes, diet: .veggie),
        Food(name: "Amendoas defumadas", category: .castanhasENozes, diet: .veggie),
        Food(name: "Nozes", category: .castanhasENozes, diet: .veggie),
        Food(name: "Amendoim", category: .castanhasENozes, diet: .veggie),
        Food(name: "Avelã", category: .castanhasENozes, diet: .veggie),
        Food(name: "Pistache", category: .castanhasENozes, diet: .veggie),
    ]
    
    var allLeitesEQueijos: [Food] = [
        Food(name: "Coalhada", category: .leiteEQueijos, diet: .veggie),
        Food(name: "Leite", category: .leiteEQueijos, diet: .veggie),
        Food(name: "Queijo", category: .leiteEQueijos, diet: .veggie),
        Food(name: "Iogurte", category: .leiteEQueijos, diet: .veggie),
        Food(name: "Queijo branco", category: .leiteEQueijos, diet: .veggie),
        Food(name: "Ricota", category: .leiteEQueijos, diet: .veggie),
    ]
    
    var allCarnesEOvos: [Food] = [
        Food(name: "Omelete", category: .carnesEOvos, diet: .veggie),
        Food(name: "Ovos", category: .carnesEOvos, diet: .veggie),
        Food(name: "PTS", category: .carnesEOvos, diet: .veggie),
        Food(name: "Falafel", category: .carnesEOvos, diet: .veggie),
        Food(name: "Homus", category: .carnesEOvos, diet: .veggie),
        Food(name: "Cogumo", category: .carnesEOvos, diet: .veggie),
        Food(name: "Grão de bico", category: .carnesEOvos, diet: .veggie),
        Food(name: "Ervilha", category: .carnesEOvos, diet: .veggie),
        Food(name: "Seitan", category: .carnesEOvos, diet: .veggie),
        Food(name: "Carne de cabrito", category: .carnesEOvos, diet: .regular),
        Food(name: "Carne de cordeiro", category: .carnesEOvos, diet: .regular),
        Food(name: "Galeto", category: .carnesEOvos, diet: .regular),
        Food(name: "Pernil", category: .carnesEOvos, diet: .regular),
        Food(name: "Carne bovina", category: .carnesEOvos, diet: .regular),
        Food(name: "Carne de porco", category: .carnesEOvos, diet: .regular),
        Food(name: "Peixe", category: .carnesEOvos, diet: .regular),
        Food(name: "Ovos de codorna", category: .carnesEOvos, diet: .regular),
        Food(name: "Bife", category: .carnesEOvos, diet: .regular),
        Food(name: "Carne moída", category: .carnesEOvos, diet: .regular),
    ]
    
    var allBebidas: [Food] = [
        Food(name: "Café", category: .bebidas, diet: .veggie),
        Food(name: "Café com leite", category: .bebidas, diet: .veggie),
        Food(name: "Chá", category: .bebidas, diet: .veggie),
        Food(name: "Leite", category: .bebidas, diet: .veggie),
        Food(name: "Iogurte", category: .bebidas, diet: .veggie),
        Food(name: "Suco natural", category: .bebidas, diet: .veggie),
        Food(name: "Leite batido com frutas", category: .bebidas, diet: .veggie),
    ]
    
    var selectedFeijoes: [Food] = [
        Food(name: "Feijão carioca", category: .feijoes, diet: .veggie),
        Food(name: "Lentilha", category: .feijoes, diet: .veggie),
    ]
    
    var selectedCereaisCafeELanche: [Food] = [
        Food(name: "Aveia", category: .cereaisCafeELanche, diet: .veggie),
    ]
    
    var selectedCereaisAlmocoEJanta: [Food] = [
        Food(name: "Arroz integral", category: .cereaisAlmocoEJanta, diet: .veggie),
        Food(name: "Macarrão", category: .cereaisAlmocoEJanta, diet: .veggie),
    ]
    
    var selectedRaizesETuberculos: [Food] = [
        Food(name: "Batata", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Farinha de mandioca", category: .raizesETuberculos, diet: .veggie),
    ]
    
    var selectedLegumesEVerduras: [Food] = [
        Food(name: "Abobrinha", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Alface", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Berinjela", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Brócolis", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Cenoura", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Couve-flor", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Pimentão", category: .legumesEVerduras, diet: .veggie),
        Food(name: "Tomate", category: .legumesEVerduras, diet: .veggie)
    ]
    
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
        Food(name: "Omelete", category: .carnesEOvos, diet: .veggie),
        Food(name: "Ovos", category: .carnesEOvos, diet: .veggie),
        Food(name: "PTS", category: .carnesEOvos, diet: .veggie),
        Food(name: "Falafel", category: .carnesEOvos, diet: .veggie),
        Food(name: "Homus", category: .carnesEOvos, diet: .veggie),
        Food(name: "Grão de bico", category: .carnesEOvos, diet: .veggie),
        Food(name: "Carne bovina", category: .carnesEOvos, diet: .regular),
        Food(name: "Peixe", category: .carnesEOvos, diet: .regular),
    ]
    
    var selectedBebidas: [Food] = [
        Food(name: "Café", category: .bebidas, diet: .veggie),
        Food(name: "Suco natural", category: .bebidas, diet: .veggie),
        Food(name: "Leite batido com frutas", category: .bebidas, diet: .veggie),
        Food(name: "Chá", category: .bebidas, diet: .veggie),
    ]
    
    var breakfastOptions: [MealOption] = [
        MealOption(name: "Opção 1 - Café da Manhã", type: .cafeDaManha, imageName: "opcaoCafe1", categoriesIncluded: [.bebidas, .frutas, .cereaisCafeELanche]),
        MealOption(name: "Opção 3 - Café da Manhã", type: .cafeDaManha, imageName: "opcaoCafe3", categoriesIncluded: [.bebidas, .frutas, .leiteEQueijos, .cereaisCafeELanche]),
        MealOption(name: "Opção 5 - Café da Manhã", type: .cafeDaManha, imageName: "opcaoCafe5", categoriesIncluded: [.bebidas, .frutas, .leiteEQueijos]),
    ]
    
    var lunchOptions: [MealOption] = [
        MealOption(name: "Opção 1 - Almoço", type: .almoco, imageName: "opcaoAlmoco1", categoriesIncluded: [.feijoes, .cereaisAlmocoEJanta, .legumesEVerduras, .frutas]),
        MealOption(name: "Opção 2 - Almoço", type: .almoco, imageName: "opcaoAlmoco2", categoriesIncluded: [.feijoes, .cereaisAlmocoEJanta, .legumesEVerduras, .carnesEOvos, .frutas]),
        MealOption(name: "Opção 3 - Almoço", type: .almoco, imageName: "opcaoAlmoco3", categoriesIncluded: [.feijoes, .cereaisAlmocoEJanta, .carnesEOvos, .legumesEVerduras]),
        MealOption(name: "Opção 4 - Almoço", type: .almoco, imageName: "opcaoAlmoco4", categoriesIncluded: [.raizesETuberculos, .feijoes, .legumesEVerduras, .carnesEOvos, .frutas]),
        MealOption(name: "Opção 5 - Almoço", type: .almoco, imageName: "opcaoAlmoco5", categoriesIncluded: [.feijoes, .cereaisAlmocoEJanta, .raizesETuberculos, .legumesEVerduras, .frutas]),
    ]
    
    var dinnerOptions: [MealOption] = [
        MealOption(name: "Opção 1 - Janta", type: .janta, imageName: "opcaoJanta1", categoriesIncluded: [.cereaisAlmocoEJanta, .feijoes, .carnesEOvos, .frutas]),
        MealOption(name: "Opção 3 - Janta", type: .janta, imageName: "opcaoJanta3", categoriesIncluded: [.legumesEVerduras, .carnesEOvos, .raizesETuberculos]),
        MealOption(name: "Opção 4 - Janta", type: .janta, imageName: "opcaoJanta4", categoriesIncluded: [.cereaisAlmocoEJanta, .feijoes, .carnesEOvos]),
    ]
    
    var snackOptions: [MealOption] = [
        MealOption(name: "Opção 1 - Lanche", type: .lanche, imageName: "opcaoLanche1", categoriesIncluded: [.cereaisCafeELanche, .frutas]),
        MealOption(name: "Opção 2 - Lanche", type: .lanche, imageName: "opcaoLanche2", categoriesIncluded: [.castanhasENozes]),
        MealOption(name: "Opção 3 - Lanche", type: .lanche, imageName: "opcaoLanche3", categoriesIncluded: [.frutas]),
    ]
    
    
    var week = Week(startDate: NSDate(timeIntervalSinceReferenceDate: 1624406400000) as Date, endDate: NSDate(timeIntervalSinceReferenceDate: 1624924800000) as Date, isPlanned: false, days: [
        Day(name: "23/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624406400000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true),
        Day(name: "24/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624492800000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true),
        Day(name: "25/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624579200000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true),
        Day(name: "26/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624665600000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true),
        Day(name: "27/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624752000000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true),
        Day(name: "28/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624838400000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true),
        Day(name: "29/junho", date: NSDate(timeIntervalSinceReferenceDate: 1624924800000) as Date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true),
    ])
}
