//
//  CreateWeeks.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 26/06/21.
//

import Foundation

struct CalendarManager {
    static var shared = CalendarManager()
    
    func createEmptyWeek(date: Date) -> Week {
        let startOfWeek = date.startOfWeek
        
        var days: [Day] = []
        
        for i in 0..<7 {
            var dayComponents = DateComponents()
            dayComponents.day = i
            let newDate = Calendar.current.date(byAdding: dayComponents, to: startOfWeek)
            let day = createEmptyDay(date: newDate!)
            days.append(day)
        }
        
        let week = Week(startDate: date, isPlanned: false, days: days)
        return week
    }
    
    func createEmptyDay(date: Date) -> Day {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "pt_BR")
        formatter.setLocalizedDateFormatFromTemplate("EEEE/dd/MMMM/YYYY")
        
        let day = Day(date: date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true)
        return day
    }
    
    func searchWeek(date: Date, weeks: [Week]) -> Week {
        let weeksArray = weeks
            
        let dateComponents = Calendar.current.dateComponents([.weekOfYear, .year], from: date)
        let weekOfYear = dateComponents.weekOfYear
        let year = dateComponents.year
            
        let filteredWeek = weeksArray.filter { week in
            (week.year == year) && (week.weekOfYear == weekOfYear)
        }
            
        if filteredWeek.count == 1 {
            return filteredWeek[0]
        } else {
            // Usar createEmptyWeek
            let newWeek = createEmptyWeek(date: date)
            userData.weeks.append(newWeek)
            print("Semanas cadastradas no banco:")
            print(userData.weeks)
            return newWeek
        }
    }

    func createWeeksAfterWeek(date: Date, weeks: [Week], number: Int) {
        let currentDate = date
        
        var dateComponents = DateComponents()
        
        for i in 1...number{
            dateComponents.day = 7 * i
            let futureDate = Calendar.current.date(byAdding: dateComponents, to: currentDate)
            
            searchWeek(date: futureDate!, weeks: weeks)
        }
    }

    
    
}

