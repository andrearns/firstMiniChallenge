//
//  Week.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Week {
    var id = UUID()
    var startDay: Int
    var startMonth: Int
    var endDay: Int
    var endMonth: Int
    var isPlanned: Bool
    var days: [Day]
}
