//
//  planWeek.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 23/06/21.
//

import Foundation

func planWeek(week: Week, diet: Diet, feijoes: [Food], cereaisCafeELanche: [Food], cereaisAlmocoEJanta: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food], bebidas: [Food]) -> Week{
    
    let firstDay: Date = week.days[0].date
    let lastDay: Date = week.days[6].date
    var isPlanned = false
    
    var days: [Day] = []
    
    for i in 0..<week.days.count {
        days.append(planDay(day: week.days[i], diet: diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas))
    }
    
    isPlanned = true
    
    let plannedWeek = Week(startDate: firstDay, endDate: lastDay, isPlanned: isPlanned, days: days)
    
    print("________________________________________")
    print("Semana planejada:")
    print(plannedWeek)
    
    return plannedWeek

}
