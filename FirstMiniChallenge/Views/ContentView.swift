//
//  ContentView.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @State var meal = Meal(name: "", imageName: "", type: .none, diet: .none, isPlanned: false, foods: [])
    @State var day = Day(date: Date(), plannedMeals: [], meals: [], isFullyPlanned: false)
    
    var body: some View {
        VStack {
        
            Button(action:{
                let plannedMeal = generateMeal(type: .almoco, mealOption: data.lunchOption1, diet: data.diet, feijoes: data.feijoes, cereais: data.cereais, raizesETuberculos: data.raizesETuberculos, legumesEVerduras: data.legumesEVerduras, frutas: data.frutas, castanhasENozes: data.castanhasENozes, leitesEQueijos: data.leitesEQueijos, carnesEOvos: data.carnesEOvos)
                meal = plannedMeal
            }) {
                Text("Planejar refeição")
                    .bold()
            }.frame(width: 200, height: 40, alignment: .center)
            .background(Color(.black))
            .foregroundColor(.white)
            .cornerRadius(30.0)
            .padding(.bottom, 20)
            
            Button(action:{
                let plannedDay = planDay(isBreakfastEnabled: true, isLunchEnabled: true, isSnackEnabled: true, isDinnerEnabled: true, diet: .regular, feijoes: data.feijoes, cereais: data.cereais, raizesETuberculos: data.raizesETuberculos, legumesEVerduras: data.legumesEVerduras, frutas: data.frutas, castanhasENozes: data.castanhasENozes, leitesEQueijos: data.leitesEQueijos, carnesEOvos: data.carnesEOvos)
                day = plannedDay
            }) {
                Text("Planejar dia")
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
