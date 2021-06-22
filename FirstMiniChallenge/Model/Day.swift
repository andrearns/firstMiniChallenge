//
//  Day.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Day {
    var id = UUID()
    var day: Int
    var week: Int
    var month: Int
    var cafeDaManha: Meal?
    var almoco: Meal?
    var lanche: Meal?
    var dinner: Meal?
    var isPlanned: Bool
}
