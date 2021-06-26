//
//  WeekManager.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 25/06/21.
//

import Foundation

class WeekManager {
    
    static var shared = WeekManager()
    
    func generateMeal(type: MealType, mealOption: MealOption, diet: Diet, feijoes: [Food], cereaisCafeELanche: [Food], cereaisAlmocoEJanta: [Food] , raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food], bebidas: [Food]) -> Meal {
        
        var foods = [Food]()
        
        var feijao: Food?
        var cerealCafeELanche: Food?
        var cerealAlmocoEJanta: Food?
        var raizETuberculo: Food?
        var legumeEVerdura1: Food?
        var legumeEVerdura2: Food?
        var fruta: Food?
        var castanhaENozes: Food?
        var leiteEQueijo: Food?
        var carneEOvos: Food?
        var bebida: Food?
        
        var categoriesIncluded = [Category]()
        var optionHasFeijao = false
        var optionHasCereaisCafeELanche = false
        var optionHasCereaisAlmocoEJanta = false
        var optionHasRaizesETuberculos = false
        var optionHasLegumesEVerduras = false
        var optionHasFrutas = false
        var optionHasCastanhasENozes = false
        var optionHasLeitesEQueijos = false
        var optionHasCarnesEOvos = false
        var optionHasBebidas = false
        
        for i in 0..<mealOption.categoriesIncluded.count {
            switch mealOption.categoriesIncluded[i] {
            case .feijoes:
                optionHasFeijao = true
                categoriesIncluded.append(.feijoes)
                feijao = sortFood(in: .feijoes, foods: feijoes)
                foods.append(feijao!)
            case .cereaisCafeELanche:
                optionHasCereaisCafeELanche = true
                categoriesIncluded.append(.cereaisCafeELanche)
                cerealCafeELanche = sortFood(in: .cereaisCafeELanche, foods: cereaisCafeELanche)
                foods.append(cerealCafeELanche!)
            case .cereaisAlmocoEJanta:
                optionHasCereaisAlmocoEJanta = true
                categoriesIncluded.append(.cereaisAlmocoEJanta)
                cerealAlmocoEJanta = sortFood(in: .cereaisAlmocoEJanta, foods: cereaisAlmocoEJanta)
                foods.append(cerealAlmocoEJanta!)
            case .raizesETuberculos:
                optionHasRaizesETuberculos = true
                categoriesIncluded.append(.raizesETuberculos)
                raizETuberculo = sortFood(in: .raizesETuberculos, foods: raizesETuberculos)
                foods.append(raizETuberculo!)
            case .legumesEVerduras:
                optionHasLegumesEVerduras = true
                categoriesIncluded.append(.legumesEVerduras)
                legumeEVerdura1 = sortFood(in: .legumesEVerduras, foods: legumesEVerduras)
                legumeEVerdura2 = sortFood(in: .legumesEVerduras, foods: legumesEVerduras)
                foods.append(legumeEVerdura1!)
                foods.append(legumeEVerdura2!)
            case .frutas:
                optionHasFrutas = true
                categoriesIncluded.append(.frutas)
                fruta = sortFood(in: .frutas, foods: frutas)
                foods.append(fruta!)
            case .castanhasENozes:
                optionHasCastanhasENozes = true
                categoriesIncluded.append(.castanhasENozes)
                castanhaENozes = sortFood(in: .castanhasENozes, foods: castanhasENozes)
                foods.append(castanhaENozes!)
            case .leiteEQueijos:
                optionHasLeitesEQueijos = true
                categoriesIncluded.append(.leiteEQueijos)
                leiteEQueijo = sortFood(in: .leiteEQueijos, foods: leitesEQueijos)
                foods.append(leiteEQueijo!)
            case .carnesEOvos:
                optionHasCarnesEOvos = true
                categoriesIncluded.append(.carnesEOvos)
                carneEOvos = sortFood(in: .carnesEOvos, foods: carnesEOvos)
                foods.append(carneEOvos!)
            case .bebidas:
                optionHasBebidas = true
                categoriesIncluded.append(.bebidas)
                bebida = sortFood(in: .bebidas, foods: bebidas)
                foods.append(bebida!)
            default:
                print("Não existe nenhuma categoria com esse nome")
            }
        }

        // Gera o nome somando o nome de todos os componentes do prato
        var name: String = ""
        
        for i in 0..<foods.count {
            if i != foods.count - 1 {
                name += "\(foods[i].name), "
            } else {
                name += "\(foods[i].name)"
            }
        }
        
        let meal = Meal(name: name, imageName: mealOption.imageName, type: type, option: mealOption, diet: diet, isPlanned: true, foods: foods)
    
        return meal
    }


    func sortFood(in category: Category, foods: [Food]) -> Food {
        let array = foods
        let sortedFood = array.randomElement()
        return sortedFood!
    }

    func planDay(day: Day, diet: Diet, feijoes: [Food], cereaisCafeELanche: [Food], cereaisAlmocoEJanta: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food], bebidas: [Food]) -> Day {
        
        var meals: [Meal] = []
        var plannedMeals: [MealType] = []
        var isPlanned = false
        var breakfast: Meal?
        var lunch: Meal?
        var snack: Meal?
        var dinner: Meal?
        
        if day.isBreakfastEnabled {
            breakfast = generateMeal(type: .cafeDaManha, mealOption: sortMealOption(mealOptions: appData.breakfastOptions), diet: userData.diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
            meals.append(breakfast!)
        }
        if day.isLunchEnabled {
            lunch = generateMeal(type: .almoco, mealOption: sortMealOption(mealOptions: appData.lunchOptions), diet: userData.diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
            meals.append(lunch!)
        }
        if day.isSnackEnabled {
            snack = generateMeal(type: .lanche, mealOption: sortMealOption(mealOptions: appData.snackOptions), diet: userData.diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
            meals.append(snack!)
        }
        if day.isDinnerEnabled {
            // Repeat lunch on dinner
            if day.isLunchEnabled {
                var repeatedLunch = lunch
                repeatedLunch?.type = .janta
                meals.append(repeatedLunch!)
            } else {
                dinner = generateMeal(type: .janta, mealOption: sortMealOption(mealOptions: appData.dinnerOptions), diet: userData.diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas)
                meals.append(dinner!)
            }
        }
        
        for i in 0..<meals.count {
            switch meals[i].type {
            case .cafeDaManha:
                plannedMeals.append(.cafeDaManha)
            case .almoco:
                plannedMeals.append(.almoco)
            case .lanche:
                plannedMeals.append(.lanche)
            case .janta:
                plannedMeals.append(.janta)
            default:
                print("Não existe nenhum tipo de refeição com esse nome")
            }
        }
        
        isPlanned = true
        let plannedDay = Day(date: day.date, plannedMeals: plannedMeals, meals: meals, isPlanned: isPlanned)
        print("Dia da semana: \(plannedDay.weekday)")
        print("Abreviação: \(plannedDay.abbreviation)")
        print("Dia do mês: \(plannedDay.dayOfMonth)")
        print("Mês: \(plannedDay.month)")
        print("Semana do mês: \(plannedDay.weekOfMonth)")
        print("Semana do ano: \(plannedDay.weekOfYear)")
        print("Ano: \(plannedDay.year)")
        print("_______________________________________________")
        return plannedDay
    }

    func sortMealOption(mealOptions: [MealOption]) -> MealOption {
        let array = mealOptions
        let sortedOption = array.randomElement()
        return sortedOption!
    }
    
    func planWeek(week: Week, diet: Diet, feijoes: [Food], cereaisCafeELanche: [Food], cereaisAlmocoEJanta: [Food], raizesETuberculos: [Food], legumesEVerduras: [Food], frutas: [Food], castanhasENozes: [Food], leitesEQueijos: [Food], carnesEOvos: [Food], bebidas: [Food]) -> Week{
        
        let firstDay: Date = week.days[0].date
        var isPlanned = false
        
        var days: [Day] = []
        
        for i in 0..<week.days.count {
            days.append(planDay(day: week.days[i], diet: diet, feijoes: feijoes, cereaisCafeELanche: cereaisCafeELanche, cereaisAlmocoEJanta: cereaisAlmocoEJanta, raizesETuberculos: raizesETuberculos, legumesEVerduras: legumesEVerduras, frutas: frutas, castanhasENozes: castanhasENozes, leitesEQueijos: leitesEQueijos, carnesEOvos: carnesEOvos, bebidas: bebidas))
        }
        
        isPlanned = true
        
        let plannedWeek = Week(startDate: firstDay, isPlanned: isPlanned, days: days)
        return plannedWeek
    }
    
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
        
        let day = Day(date: date, plannedMeals: [], meals: [], isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true)
        return day
    }
    
}

extension Date {
    var startOfWeek: Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.weekOfYear, .weekday], from: self)
        return calendar.date(from: components)!
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
