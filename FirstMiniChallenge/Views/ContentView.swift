//
//  ContentView.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var meal = Meal(name: "", imageName: "", type: .none, option: MealOption(name: "", type: .none, imageName: "", categoriesIncluded: []), diet: .none,isPlanned: false, foods: [])
    @State var day = Day(name: "Hoje", date: Date(), plannedMeals: [], meals: [], isPlanned: false)
    @State var week = Week(startDate: Date(), endDate: Date(), isPlanned: false, days: [])
    
    @State var selectedMeal = "Café da Manhã"
    
    let mealTypes = ["Café da Manhã", "Almoço", "Lanche", "Janta"]
    
    var body: some View {
        VStack {
            Form {
                Text("Qual refeição você quer planejar?")
                Section {
                    Picker("Tipo da refeição", selection: $selectedMeal) {
                        ForEach(mealTypes, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(WheelPickerStyle())
                }
                Button(action:{
                    var mealType: MealType!
                    var mealOption: MealOption!
                    
                    switch selectedMeal {
                    case "Café da Manhã":
                        mealType = .cafeDaManha
                        mealOption = sortMealOption(mealOptions: data.breakfastOptions)
                    case "Almoço":
                        mealType = .almoco
                        mealOption = sortMealOption(mealOptions: data.lunchOptions)
                    case "Lanche":
                        mealType = .lanche
                        mealOption = sortMealOption(mealOptions: data.snackOptions)
                    case "Janta":
                        mealType = .janta
                        mealOption = sortMealOption(mealOptions: data.dinnerOptions)
                    default:
                        print("Não existe nenhuma categoria com esse nome")
                    }
                    
                    
                    let plannedMeal = generateMeal(type: mealType, mealOption: mealOption, diet: data.diet, feijoes: data.selectedFeijoes, cereaisCafeELanche: data.selectedCereaisCafeELanche, cereaisAlmocoEJanta: data.selectedCereaisAlmocoEJanta, raizesETuberculos: data.selectedRaizesETuberculos, legumesEVerduras: data.selectedLegumesEVerduras, frutas: data.selectedFrutas, castanhasENozes: data.selectedCastanhasENozes, leitesEQueijos: data.selectedLeitesEQueijos, carnesEOvos: data.selectedCarnesEOvos, bebidas: data.selectedBebidas)
                    meal = plannedMeal
                }) {
                    Text("Planejar refeição")
                        .bold()
                }.frame(width: 300, height: 40, alignment: .center)
                .background(Color(.black))
                .foregroundColor(.white)
                .cornerRadius(30.0)
            }
            
            Button(action:{
                let plannedDay = planDay(day: data.week.days[0], diet: .regular, feijoes: data.selectedFeijoes, cereaisCafeELanche: data.selectedCereaisCafeELanche, cereaisAlmocoEJanta: data.selectedCereaisAlmocoEJanta, raizesETuberculos: data.selectedRaizesETuberculos, legumesEVerduras: data.selectedLegumesEVerduras, frutas: data.selectedFrutas, castanhasENozes: data.selectedCastanhasENozes, leitesEQueijos: data.selectedLeitesEQueijos, carnesEOvos: data.selectedCarnesEOvos, bebidas: data.selectedBebidas)
                day = plannedDay
            }) {
                Text("Planejar dia")
                    .bold()
            }.frame(width: 200, height: 40, alignment: .center)
            .background(Color(.black))
            .foregroundColor(.white)
            .cornerRadius(30.0)
            .padding(.bottom, 10)
            
            Button(action:{
                let plannedWeek = planWeek(week: data.week, diet: data.diet, feijoes: data.selectedFeijoes, cereaisCafeELanche: data.selectedCereaisCafeELanche, cereaisAlmocoEJanta: data.selectedCereaisAlmocoEJanta, raizesETuberculos: data.selectedRaizesETuberculos, legumesEVerduras: data.selectedLegumesEVerduras, frutas: data.selectedFrutas, castanhasENozes: data.selectedCastanhasENozes, leitesEQueijos: data.selectedLeitesEQueijos, carnesEOvos: data.selectedCarnesEOvos, bebidas: data.selectedBebidas)
                week = plannedWeek
            }) {
                Text("Planejar semana")
                    .bold()
            }.frame(width: 200, height: 40, alignment: .center)
            .background(Color(.black))
            .foregroundColor(.white)
            .cornerRadius(30.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
