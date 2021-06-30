//
//  Week.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import Foundation

struct Week: Identifiable {
    var id = UUID()
    var startDate: Date
    var endDate: Date {
        var dayComponents = DateComponents()
        dayComponents.day = 6
        let date = Calendar.current.date(byAdding: dayComponents, to: startDate)
        return date!
    }
    var name: String {
        let startDateComponents = Calendar.current.dateComponents([.day, .month], from: startDate)
        let endDateComponents = Calendar.current.dateComponents([.day, .month], from: endDate)
        return String(startDateComponents.day!) + "/" + String(startDateComponents.month!) + " até " + String(endDateComponents.day!) + "/" + String(endDateComponents.month!)
    }
    
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
