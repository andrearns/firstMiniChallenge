//
//  Food.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Food: Hashable, Equatable, Codable {
    var id: String {
        return name
    }
    var name: String
    var category: Category
    var diet: Diet
    var isSelected: Bool = false
}

enum Category: Int, Codable {
    case feijoes
    case cereaisCafeELanche
    case cereaisAlmocoEJanta
    case raizesETuberculos
    case legumesEVerduras
    case frutas
    case castanhasENozes
    case leiteEQueijos
    case carnesEOvos
    case bebidas
    case none
    
    var iconTypeFood: String {
        switch self {
        case .feijoes:
            return "leguminous_meal_plan"
        case .cereaisCafeELanche, .cereaisAlmocoEJanta:
            return "cereals_meal_plan"
        case .raizesETuberculos:
            return "tubercles_meal_plan"
        case .legumesEVerduras:
            return "vegetables_and_legumes__meal_plan"
        case .frutas:
            return "fruits_meal_plan"
        case .castanhasENozes:
            return "nuts_meal_plan"
        case .leiteEQueijos:
            return "dairy__meal_plan"
        case .carnesEOvos:
            return "meat_and_eggs__meal_plan"
        case .bebidas:
            return "IconDrink"
        default:
            return "Icone dos Tipos"
        }
    }

    var textTypeFood: String {
        switch self {
        case .feijoes:
            return "Grupo das leguminosas: fontes de proteína, fibras, vitaminas do complexo B e minerais, como ferro, zinco e cálcio. "
        case .cereaisCafeELanche, .cereaisAlmocoEJanta:
            return "Grupo dos cereais: são fontes importantes de carboidratos, fibras, vitaminas (principalmente do complexo B) e minerais."
        case .raizesETuberculos:
            return "Raízes e tubérculos: são fontes de carboidratos e fibras e algumas variedades também de minerais e vitaminas, como o potássio e as vitaminas A e C."
        case .legumesEVerduras:
            return "Legumes e verduras: fontes de várias vitaminas e minerais, fibras e muitos nutrientes em uma quantidade pequena de calorias."
        case .frutas:
            return "Grupo das Frutas: excelentes fontes de fibras, de vitaminas e minerais. Sucos naturais da fruta nem sempre proporcionam os mesmos benefícios da fruta inteira."
        case .castanhasENozes:
            return "Grupo das castanhas: São ricos em minerais, vitaminas, fibras e gorduras saudáveis (insaturadas) e contêm compostos antioxidantes."
        case .leiteEQueijos:
            return "Grupo dos Laticínios: são ricos em algumas vitaminas, principalmente a vitamina A e em cálcio. "
        case .carnesEOvos:
            return "Grupo das carnes e ovos: excelentes fontes de proteína de alta qualidade e teor elevado de muitos micronutrientes, como ferro, zinco e vitamina B12."
        case .bebidas:
            return "Bebidas matutinas podem ser de diversos grupos, como dos latícineos e frutas, ou ainda o café e chás. Tente variar as bebidas nas suas manhãs."
        default:
            return "Descrição não encontrada"
        }
    }
}


