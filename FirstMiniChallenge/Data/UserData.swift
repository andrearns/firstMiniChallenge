//
//  UserData.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 25/06/21.
//

import Foundation

var userData = UserData()

struct UserData { // Dados do usuário
    // Nome do usuário
    public var name: String = "André"
    
    public var today = Date()
    
    // Dieta -> .regular ou .veggie
    var diet: Diet = .regular
    
    // Opções de feijão que o usuário escolheu
    var selectedFeijoes: [Food] = [
        Food(name: "Feijão carioca", category: .feijoes, diet: .veggie),
        Food(name: "Lentilha", category: .feijoes, diet: .veggie),
    ]
    
    // Opções de cereais do café da manhã e lanche que o usuário escolheu
    var selectedCereaisCafeELanche: [Food] = [
        Food(name: "Aveia", category: .cereaisCafeELanche, diet: .veggie),
    ]
    
    // Opções de cereais do almoço e janta que o usuário escolheu
    var selectedCereaisAlmocoEJanta: [Food] = [
        Food(name: "Arroz integral", category: .cereaisAlmocoEJanta, diet: .veggie),
        Food(name: "Macarrão", category: .cereaisAlmocoEJanta, diet: .veggie),
    ]
    
    // Opções de raízes e tuberculos que o usuário escolheu
    var selectedRaizesETuberculos: [Food] = [
        Food(name: "Batata", category: .raizesETuberculos, diet: .veggie),
        Food(name: "Farinha de mandioca", category: .raizesETuberculos, diet: .veggie),
    ]
    
    // Opções de legumes e verduras que o usuário escolheu
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
    
    // Opções de frutas que o usuário escolheu
    var selectedFrutas: [Food] = [
        Food(name: "Abacate", category: .frutas, diet: .veggie),
        Food(name: "Abacaxi", category: .frutas, diet: .veggie),
        Food(name: "Banana", category: .frutas, diet: .veggie),
        Food(name: "Manga", category: .frutas, diet: .veggie),
        Food(name: "Tangerina", category: .frutas, diet: .veggie),
        Food(name: "Uva", category: .frutas, diet: .veggie)
    ]
    
    // Opções de castanhas e nozes que o usuário escolheu
    var selectedCastanhasENozes: [Food] = [
        Food(name: "Castanha de caju", category: .castanhasENozes, diet: .veggie),
        Food(name: "Amendoas defumadas", category: .castanhasENozes, diet: .veggie),
    ]
    
    // Opções de leites e queijos que o usuário escolheu
    var selectedLeitesEQueijos: [Food] = [
        Food(name: "Queijo", category: .leiteEQueijos, diet: .veggie),
        Food(name: "Iogurte", category: .leiteEQueijos, diet: .veggie)
    ]
    
    // Opções de carnes e ovos que o usuário escolheu
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
    
    // Opções de bebidas que o usuário escolheu
    var selectedBebidas: [Food] = [
        Food(name: "Café", category: .bebidas, diet: .veggie),
        Food(name: "Suco natural", category: .bebidas, diet: .veggie),
        Food(name: "Leite batido com frutas", category: .bebidas, diet: .veggie),
        Food(name: "Chá", category: .bebidas, diet: .veggie),
    ]
    
    var weeks: [Week] = [
        Week(startDate: NSDate(timeIntervalSinceReferenceDate: 1624161190) as Date, isPlanned: false, days: [
            Day(date: NSDate(timeIntervalSinceReferenceDate: 1624161190) as Date, meals: []),
            Day(date: NSDate(timeIntervalSinceReferenceDate: 1624247590) as Date, meals: []),
            Day(date: NSDate(timeIntervalSinceReferenceDate: 1624333990) as Date, meals: []),
            Day(date: NSDate(timeIntervalSinceReferenceDate: 1624420390) as Date, meals: []),
            Day(date: NSDate(timeIntervalSinceReferenceDate: 1624506790) as Date, meals: []),
            Day(date: NSDate(timeIntervalSinceReferenceDate: 1624593190) as Date, meals: []),
            Day(date: NSDate(timeIntervalSinceReferenceDate: 1624679590) as Date, meals: []),
        ]),
    ]
    
}
