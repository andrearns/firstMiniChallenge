//
//  planWeek.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 23/06/21.
//

import Foundation

func planWeek(week: Week, diet: Diet, feijoes: [Food], cereais: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food]) -> Week{
    
    let firstDay: Date = week.days[0].date
    let lastDay: Date = week.days[6].date
    var isFullyPlanned = false
    
    var days: [Day] = []
    
    for i in 0..<week.days.count {
        days.append(planDay(day: week.days[i], diet: diet, feijoes: feijoes, cereais: cereais, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos))
    }
    
    if days.count > 5 {
        isFullyPlanned = true
    }
    
    let plannedWeek = Week(startDate: firstDay, endDate: lastDay, isFullyPlanned: isFullyPlanned, days: days)
    
    print("________________________________________")
    print("Semana planejada:")
    print(plannedWeek)
    
    return plannedWeek

}
