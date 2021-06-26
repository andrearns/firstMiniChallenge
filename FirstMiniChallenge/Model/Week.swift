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
    var month: Int {
        let dateComponents = Calendar.current.dateComponents([.month], from: startDate)
        return dateComponents.month!
    }
    var weekOfMonth: Int {
        let dateComponents = Calendar.current.dateComponents([.weekOfMonth], from: startDate)
        return dateComponents.weekOfMonth!
    }
    var weekOfYear: Int {
        let dateComponents = Calendar.current.dateComponents([.weekOfYear], from: startDate)
        return dateComponents.weekOfYear!
    }
    var year: Int {
        let dateComponents = Calendar.current.dateComponents([.year], from: startDate)
        return dateComponents.year!
    }
    var isPlanned: Bool
    var days: [Day]
}
