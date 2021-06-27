//
//  WeekView.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 26/06/21.
//

import SwiftUI

struct WeekView: View {
    @State var today = Date()
    @State var selectedWeek = userData.weeks[0]
    @State var selectedDay: Day?
    @State var selectedWeekIndex = 0
    
    var body: some View {
        VStack {
            Section {
                HStack {
                    Button(action: {
                        if selectedWeekIndex > 1 {
                            selectedWeekIndex -= 1
                        }
                        
                        selectedWeek = userData.weeks[selectedWeekIndex]
                        selectedDay = userData.weeks[selectedWeekIndex].days[0]
                    }) {
                        Image(systemName: "chevron.left")
                    }
                    Spacer()
                    Text(String(selectedWeek.name))
                        .padding(.horizontal, 40)
                    Spacer()
                    Button(action: {
                        if selectedWeekIndex < userData.weeks.count - 1 {
                            selectedWeekIndex += 1
                        }
                        
                        selectedWeek = userData.weeks[selectedWeekIndex]
                        selectedDay = userData.weeks[selectedWeekIndex].days[0]
                    }) {
                        Image(systemName: "chevron.right")
                            .foregroundColor(selectedWeekIndex == (userData.weeks.count - 1) ? .gray : .blue)
                    }
                }.padding(.bottom, 20)
                .padding(.horizontal, 40)
            }
            HStack {
                ForEach(selectedWeek.days) { day in
                    VStack {
                        Button(action: {
                            selectedDay = day
                            print("Dia selecionado:")
                            print(selectedDay)
                        }) {
                            VStack {
                                Text(String(day.dayOfMonth))
                                Text(day.abbreviation)
                                    .padding(5)
                            }
                        }
                    }
                }
            }
            if !selectedWeek.isPlanned {
                VStack {
                    Text("Parece que você não planejou nenhuma refeição para essa semana :(").multilineTextAlignment(.center)
                }
                .padding(20)
                .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding(.top, 40)
                Button(action:{
                    let plannedWeek = MealManager.shared.planWeek(week: selectedWeek, diet: userData.diet, feijoes: userData.selectedFeijoes, cereaisCafeELanche: userData.selectedCereaisCafeELanche, cereaisAlmocoEJanta: userData.selectedCereaisAlmocoEJanta, raizesETuberculos: userData.selectedRaizesETuberculos, legumesEVerduras: userData.selectedLegumesEVerduras, frutas: userData.selectedFrutas, castanhasENozes: userData.selectedCastanhasENozes, leitesEQueijos: userData.selectedLeitesEQueijos, carnesEOvos: userData.selectedCarnesEOvos, bebidas: userData.selectedBebidas)
                    selectedWeek = plannedWeek
                    selectedDay = selectedWeek.days[0]
                    userData.weeks[selectedWeekIndex] = selectedWeek
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
                Spacer()
            }
            else {
                if selectedDay!.meals.count > 0 {
                    ScrollView {
                        ForEach(selectedDay!.meals) { meal in
                            HStack {
                                VStack {
                                    Text(meal.name)
                                        .padding(.leading, 20)
                                }
                                Spacer()
                            }
                            .frame(height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color(.orange))
                            .cornerRadius(5)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 5)
                            
                        }
                    }
                }
            }
        }.onAppear {
            selectedWeek = CalendarManager.shared.searchWeek(date: today, weeks: userData.weeks)
            CalendarManager.shared.createWeeksAfterWeek(date: today, weeks: userData.weeks, number: 4)
        }
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView()
    }
}
