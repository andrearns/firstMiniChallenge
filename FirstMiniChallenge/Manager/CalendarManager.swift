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
        var days: [Day] = []
        
        let startOfWeek = date.startOfWeek
        
        for i in 0..<7 {
            var dayComponents = DateComponents()
            dayComponents.day = i
            
            let newDate = Calendar.current.date(byAdding: dayComponents, to: startOfWeek)
            
            let day = createEmptyDay(date: newDate!)
            days.append(day)
        }
        
        let week = Week(startDate: startOfWeek, isPlanned: false, days: days)
        return week
    }
    
    func createEmptyDay(date: Date) -> Day {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "pt_BR")
        formatter.setLocalizedDateFormatFromTemplate("EEEE/dd/MMMM/YYYY")
        
        let day = Day(date: date, meals: [])
        return day
    }
    
    func indexOf(date: Date, days: [Day]) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.weekday], from: date)
        let currentDayIndex = components.weekday! - 1
        return currentDayIndex
    }
    
    func searchWeek(date: Date, weeks: [Week]) -> Week {
        let weeksArray = weeks
            
        let dateComponents = Calendar.current.dateComponents([.weekOfYear, .year], from: date)
        let weekOfYear = dateComponents.weekOfYear
        let year = dateComponents.year
            
        let filteredWeek = weeksArray.filter { week in
            (week.year == year) && (week.weekOfYear == weekOfYear)
        }
            
        if filteredWeek.count > 0 {
            return filteredWeek[0]
        } else {
            let newWeek = createEmptyWeek(date: date)
            userData.weeks.append(newWeek)
            return newWeek
        }
    }

    func loadWeeks(date: Date, weeks: [Week], number: Int) -> [Week] {
        let currentDate = date
        
        var dateComponents = DateComponents()
        
        var loadedWeeks: [Week] = []
        
        for i in (0 - number)...number{
            dateComponents.day = 7 * i
            let futureDate = Calendar.current.date(byAdding: dateComponents, to: currentDate)
            
            loadedWeeks.append(searchWeek(date: futureDate!, weeks: weeks))
        }
        
        return loadedWeeks
    }

    func indexOf(chosenWeek: Week, weeks: [Week]) -> Int {
        let index = weeks.firstIndex { week in
            week.id == chosenWeek.id
        }
        
        if index != nil {
            return index!
        } else {
            return 0
        }
    }
}

extension Date {
    var startOfWeek: Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        let date = calendar.date(from: components)
        return date!
    }
    
    func dayRangeOf(weekOfYear: Int, for date: Date) -> Range<Date> {
        let calendar = Calendar.current
        let year = calendar.component(.yearForWeekOfYear, from: date)
        let startComponents = DateComponents(weekOfYear: weekOfYear, yearForWeekOfYear: year)
        let startDate = calendar.date(from: startComponents)!
        let endComponents = DateComponents(day:7, second: -1)
        let endDate = calendar.date(byAdding: endComponents, to: startDate)!
        return startDate..<endDate
    }
}

