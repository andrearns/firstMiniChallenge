//
//  ContentView.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var chosenDay = Date()
    @State var chosenWeek: Week?
    @State var selectedMeal = "Café da Manhã"
    
    let mealTypes = ["Café da Manhã", "Almoço", "Lanche", "Janta"]
    
    var body: some View {
        VStack {
            Form {
                Text("\(userData.name), qual refeição você quer planejar?")
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
                        mealType = .breakfast
                        mealOption = MealManager.shared.sortMealOption(mealOptions: appData.breakfastOptions)
                    case "Almoço":
                        mealType = .lunch
                        mealOption = MealManager.shared.sortMealOption(mealOptions: appData.lunchOptions)
                    case "Lanche":
                        mealType = .snack
                        mealOption = MealManager.shared.sortMealOption(mealOptions: appData.snackOptions)
                    case "Janta":
                        mealType = .dinner
                        mealOption = MealManager.shared.sortMealOption(mealOptions: appData.dinnerOptions)
                    default:
                        print("Não existe nenhuma categoria com esse nome")
                    }
                    let plannedMeal = MealManager.shared.generateMeal(type: mealType, mealOption: mealOption, diet: userData.diet, feijoes: userData.selectedFeijoes, cereaisCafeELanche: userData.selectedCereaisCafeELanche, cereaisAlmocoEJanta: userData.selectedCereaisAlmocoEJanta, raizesETuberculos: userData.selectedRaizesETuberculos, legumesEVerduras: userData.selectedLegumesEVerduras, frutas: userData.selectedFrutas, castanhasENozes: userData.selectedCastanhasENozes, leitesEQueijos: userData.selectedLeitesEQueijos, carnesEOvos: userData.selectedCarnesEOvos, bebidas: userData.selectedBebidas)
                    print("________________________________________")
                    print("Refeição: \(plannedMeal.type)")
                    print(plannedMeal)
                }) {
                    Text("Planejar refeição")
                        .bold()
                }.frame(width: 300, height: 40, alignment: .center)
                .background(Color(.black))
                .foregroundColor(.white)
                .cornerRadius(30.0)
            }
            
            Button(action:{
                let todayDate = CalendarManager.shared.createEmptyDay(date: chosenDay)
                let plannedDay = MealManager.shared.planDay(day: todayDate, diet: .regular, feijoes: userData.selectedFeijoes, cereaisCafeELanche: userData.selectedCereaisCafeELanche, cereaisAlmocoEJanta: userData.selectedCereaisAlmocoEJanta, raizesETuberculos: userData.selectedRaizesETuberculos, legumesEVerduras: userData.selectedLegumesEVerduras, frutas: userData.selectedFrutas, castanhasENozes: userData.selectedCastanhasENozes, leitesEQueijos: userData.selectedLeitesEQueijos, carnesEOvos: userData.selectedCarnesEOvos, bebidas: userData.selectedBebidas)
                print("________________________________________")
                print("Refeições do dia: \(plannedDay.name)")

                print(plannedDay)
            }) {
                Text("Planejar dia")
                    .bold()
            }.frame(width: 200, height: 40, alignment: .center)
            .background(Color(.black))
            .foregroundColor(.white)
            .cornerRadius(30.0)
            .padding(.bottom, 10)
            
            Button(action:{
                let thisWeek = CalendarManager.shared.createEmptyWeek(date: chosenDay)
                let plannedWeek = MealManager.shared.planWeek(week: thisWeek, diet: userData.diet, feijoes: userData.selectedFeijoes, cereaisCafeELanche: userData.selectedCereaisCafeELanche, cereaisAlmocoEJanta: userData.selectedCereaisAlmocoEJanta, raizesETuberculos: userData.selectedRaizesETuberculos, legumesEVerduras: userData.selectedLegumesEVerduras, frutas: userData.selectedFrutas, castanhasENozes: userData.selectedCastanhasENozes, leitesEQueijos: userData.selectedLeitesEQueijos, carnesEOvos: userData.selectedCarnesEOvos, bebidas: userData.selectedBebidas)
                print("________________________________________")
                print("Refeições da semana:")
                print("Semana do mês: \(thisWeek.weekOfMonth)")
                print("Semana do ano: \(thisWeek.weekOfYear)")
                print("Ano: \(thisWeek.year)")
                print(plannedWeek)
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
