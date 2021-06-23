//
//  ContentView.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var meal = Meal(name: "", imageName: "", type: .none, diet: .none, isPlanned: false, foods: [])
    @State var day = Day(name: "Hoje", date: Date(), plannedMeals: [], meals: [], isFullyPlanned: false)
    @State var week = Week(startDate: Date(), endDate: Date(), isFullyPlanned: false, days: [])
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
                    var mealType: MealType = .cafeDaManha
                    var mealOption: MealOption = data.mealOptions[0]
                    
                    switch selectedMeal {
                    case "Café da Manhã":
                        mealType = .cafeDaManha
                        mealOption = data.mealOptions[0]
                    case "Almoço":
                        mealType = .almoco
                        mealOption = data.mealOptions[1]
                    case "Lanche":
                        mealType = .lanche
                        mealOption = data.mealOptions[0]
                    case "Janta":
                        mealType = .janta
                        mealOption = data.mealOptions[1]
                    default:
                        print("Não existe nenhuma categoria com esse nome")
                    }
                    
                    
                    let plannedMeal = generateMeal(type: mealType, mealOption: mealOption, diet: data.diet, feijoes: data.feijoes, cereais: data.cereais, raizesETuberculos: data.raizesETuberculos, legumesEVerduras: data.legumesEVerduras, frutas: data.frutas, castanhasENozes: data.castanhasENozes, leitesEQueijos: data.leitesEQueijos, carnesEOvos: data.carnesEOvos)
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
                let plannedDay = planDay(day: data.week.days[0], diet: .regular, feijoes: data.feijoes, cereais: data.cereais, raizesETuberculos: data.raizesETuberculos, legumesEVerduras: data.legumesEVerduras, frutas: data.frutas, castanhasENozes: data.castanhasENozes, leitesEQueijos: data.leitesEQueijos, carnesEOvos: data.carnesEOvos)
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
                let plannedWeek = planWeek(week: data.week, diet: data.diet, feijoes: data.feijoes, cereais: data.cereais, raizesETuberculos: data.raizesETuberculos, legumesEVerduras: data.legumesEVerduras, frutas: data.frutas, castanhasENozes: data.castanhasENozes, leitesEQueijos: data.leitesEQueijos, carnesEOvos: data.carnesEOvos)
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
