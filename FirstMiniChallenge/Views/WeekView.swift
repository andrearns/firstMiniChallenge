//
//  WeekView.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 26/06/21.
//

import SwiftUI

let weeks = userData.weeks

struct WeekView: View {
    @State var chosenDay = Date()
    @State var selectedWeek = weeks[0]
    @State var selectedDay: Day?
    @State var selectedWeekIndex = 0
    
    var body: some View {
        VStack {
            Section {
                HStack {
                    Button(action: {
                        if selectedWeekIndex > 0 {
                            selectedWeekIndex -= 1
                            selectedWeek = weeks[selectedWeekIndex]
                        }
                    }) {
                        Image(systemName: "chevron.left")
                    }
                   
                    Text(String(selectedWeek.name))
                        .padding(.horizontal, 40)
                    Button(action: {
                        if selectedWeekIndex < weeks.count - 1 {
                            selectedWeekIndex += 1
                            selectedWeek = weeks[selectedWeekIndex]
                        }
                    }) {
                        Image(systemName: "chevron.right")
                    }
                }.padding(.bottom, 20)
            }
            if selectedWeek.isPlanned {
                HStack {
                    ForEach(selectedWeek.days) { day in
                        VStack {
                            Text(String(day.dayOfMonth))
                            Text(day.abbreviation)
                                .padding(5)
                        }
                    }
                }
            } else {
                VStack {
                    Text("Parece que você não planejou nenhuma refeição para essa semana :(").multilineTextAlignment(.center)
                }.padding(20)
                .cornerRadius(20.0)
                .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                Button(action:{
                    let plannedWeek = WeekManager.shared.planWeek(week: selectedWeek, diet: userData.diet, feijoes: userData.selectedFeijoes, cereaisCafeELanche: userData.selectedCereaisCafeELanche, cereaisAlmocoEJanta: userData.selectedCereaisAlmocoEJanta, raizesETuberculos: userData.selectedRaizesETuberculos, legumesEVerduras: userData.selectedLegumesEVerduras, frutas: userData.selectedFrutas, castanhasENozes: userData.selectedCastanhasENozes, leitesEQueijos: userData.selectedLeitesEQueijos, carnesEOvos: userData.selectedCarnesEOvos, bebidas: userData.selectedBebidas)
                    print("________________________________________")
                    print("Refeições da semana:")
                    print("Semana do mês: \(plannedWeek.weekOfMonth)")
                    print("Semana do ano: \(plannedWeek.weekOfYear)")
                    print("Ano: \(plannedWeek.year)")
                    print(plannedWeek)
                }) {
                    Text("Planejar semana")
                        .bold()
                }.frame(width: 300, height: 40, alignment: .center)
                .background(Color(.black))
                .foregroundColor(.white)
                .cornerRadius(30.0)
                .padding(.top, 20)
            }
        }
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView()
    }
}
