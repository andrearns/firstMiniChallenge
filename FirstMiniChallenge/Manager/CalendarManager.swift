//
//  CreateWeeks.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 26/06/21.
//

import Foundation

struct CalendarManager {
    static var shared = CalendarManager()
    
    func createEmptyWeek(date: Date, mealsEnabledPreferences: MealsEnabledInWeek) -> Week {
        let startOfWeek = date.startOfWeek
        
        var days: [Day] = []
        
        for i in 0..<7 {
            var isBreakfastEnabled = false
            var isLunchEnabled = false
            var isDinnerEnabled = false
            var isSnackEnabled = false
            
            var dayComponents = DateComponents()
            dayComponents.day = i
            let newDate = Calendar.current.date(byAdding: dayComponents, to: startOfWeek)
            
            
            switch i {
            case 0:
                if mealsEnabledPreferences.sunday[0] == true {
                    isBreakfastEnabled = true
                }
                if mealsEnabledPreferences.sunday[1] == true {
                    isLunchEnabled = true
                }
                if mealsEnabledPreferences.sunday[2] == true {
                    isDinnerEnabled = true
                }
                if mealsEnabledPreferences.sunday[3] == true {
                    isSnackEnabled = true
                }
            case 1:
                if mealsEnabledPreferences.monday[0] == true {
                    isBreakfastEnabled = true
                }
                if mealsEnabledPreferences.monday[1] == true {
                    isLunchEnabled = true
                }
                if mealsEnabledPreferences.monday[2] == true {
                    isDinnerEnabled = true
                }
                if mealsEnabledPreferences.monday[3] == true {
                    isSnackEnabled = true
                }
            case 2:
                if mealsEnabledPreferences.tuesday[0] == true {
                    isBreakfastEnabled = true
                }
                if mealsEnabledPreferences.tuesday[1] == true {
                    isLunchEnabled = true
                }
                if mealsEnabledPreferences.tuesday[2] == true {
                    isDinnerEnabled = true
                }
                if mealsEnabledPreferences.tuesday[3] == true {
                    isSnackEnabled = true
                }
            case 3:
                if mealsEnabledPreferences.wednesday[0] == true {
                    isBreakfastEnabled = true
                }
                if mealsEnabledPreferences.wednesday[1] == true {
                    isLunchEnabled = true
                }
                if mealsEnabledPreferences.wednesday[2] == true {
                    isDinnerEnabled = true
                }
                if mealsEnabledPreferences.wednesday[3] == true {
                    isSnackEnabled = true
                }
            case 4:
                if mealsEnabledPreferences.thursday[0] == true {
                    isBreakfastEnabled = true
                }
                if mealsEnabledPreferences.thursday[1] == true {
                    isLunchEnabled = true
                }
                if mealsEnabledPreferences.thursday[2] == true {
                    isDinnerEnabled = true
                }
                if mealsEnabledPreferences.thursday[3] == true {
                    isSnackEnabled = true
                }
            case 5:
                if mealsEnabledPreferences.friday[0] == true {
                    isBreakfastEnabled = true
                }
                if mealsEnabledPreferences.friday[1] == true {
                    isLunchEnabled = true
                }
                if mealsEnabledPreferences.friday[2] == true {
                    isDinnerEnabled = true
                }
                if mealsEnabledPreferences.friday[3] == true {
                    isSnackEnabled = true
                }
                 
            case 6:
                if mealsEnabledPreferences.saturday[0] == true {
                    isBreakfastEnabled = true
                }
                if mealsEnabledPreferences.saturday[1] == true {
                    isLunchEnabled = true
                }
                if mealsEnabledPreferences.saturday[2] == true {
                    isDinnerEnabled = true
                }
                if mealsEnabledPreferences.saturday[3] == true {
                    isSnackEnabled = true
                }
            default:
                isBreakfastEnabled = false
                isLunchEnabled = false
                isDinnerEnabled = false
                isSnackEnabled = false
            }
            
            
            let day = createEmptyDay(date: newDate!, isBreakfastEnabled: isBreakfastEnabled, isLunchEnabled: isLunchEnabled, isSnackEnabled: isSnackEnabled, isDinnerEnabled: isDinnerEnabled)
            days.append(day)
        }
        
        let week = Week(startDate: date, isPlanned: false, days: days)
        return week
    }
    
    func createEmptyDay(date: Date, isBreakfastEnabled: Bool, isLunchEnabled: Bool, isSnackEnabled: Bool, isDinnerEnabled: Bool) -> Day {
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
            
        if filteredWeek.count > 0 {
            return filteredWeek[0]
        } else {
            // Usar createEmptyWeek
            let newWeek = createEmptyWeek(date: date, mealsEnabledPreferences: userData.mealsEnabledInWeek)
            userData.weeks.append(newWeek)
            print("Semanas cadastradas no banco:")
            print(userData.weeks)
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

