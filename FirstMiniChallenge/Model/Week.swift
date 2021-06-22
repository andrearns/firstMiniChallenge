//
//  Week.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Week {
    var id = UUID()
    var startDate: Date
    var endDate: Date
    var isFullyPlanned: Bool
    var days: [Day]
}
