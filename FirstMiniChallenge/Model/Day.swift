//
//  Day.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Day: Identifiable {
    var id = UUID()
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
            return "Sab"
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
    var plannedMeals: [MealType]
    var meals: [Meal]
    var isBreakfastEnabled: Bool = false
    var isLunchEnabled: Bool = false
    var isSnackEnabled: Bool = false
    var isDinnerEnabled: Bool = false
    var isPlanned: Bool = false
}
