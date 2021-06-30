//
//  Day.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Day: Identifiable {
    var id = UUID()
    var isSelected: Bool = false
    var name: String {
        let dateComponents = Calendar.current.dateComponents([.day, .month], from: date)
        return String(dateComponents.day!) + "/" + String(dateComponents.month!)
    }
    var date: Date
    var dayOfMonth: Int {
        let dateComponents = Calendar.current.dateComponents([.day], from: date)
        return dateComponents.day! 
    }
    var weekday: Int {
        let dateComponents = Calendar.current.dateComponents([.weekday], from: date)
        return dateComponents.weekday!
    }
    var abbreviation: String {
        switch weekday {
        case 1:
            return "Dom"
        case 2:
            return "Seg"
        case 3:
            return "Ter"
        case 4:
            return "Qua"
        case 5:
            return "Qui"
        case 6:
            return "Sex"
        case 7:
            return "Sáb"
        default:
            return "X"
        }
    }
    var month: Int {
        let dateComponents = Calendar.current.dateComponents([.month], from: date)
        return dateComponents.month!
    }
    var weekOfMonth: Int {
        let dateComponents = Calendar.current.dateComponents([.weekOfMonth], from: date)
        return dateComponents.weekOfMonth!
    }
    var weekOfYear: Int {
        let dateComponents = Calendar.current.dateComponents([.weekOfYear], from: date)
        return dateComponents.weekOfYear!
    }
    var year: Int {
        let dateComponents = Calendar.current.dateComponents([.year], from: date)
        return dateComponents.year!
    }

    var meals: [Meal]
    var isBreakfastEnabled = true
    var isLunchEnabled = true
    var isSnackEnabled = true
    var isDinnerEnabled = true
    var isPlanned = false
}

extension Day: Equatable {
    static func == (lhs: Day, rhs: Day) -> Bool {
        return
            lhs.id == rhs.id &&
            lhs.id == rhs.id &&
            lhs.id == rhs.id
    }
}

