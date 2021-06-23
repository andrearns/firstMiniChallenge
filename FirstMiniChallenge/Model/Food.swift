//
//  Food.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Food {
    var id: String {
        return name
    }
    var name: String
    var category: Category
    var diet: Diet
}

enum Category {
    case feijoes
    case cereais
    case raizesETuberculos
    case legumesEVerduras
    case frutas
    case castanhasENozes
    case leiteEQueijos
    case carnesEOvos
    case none
}
