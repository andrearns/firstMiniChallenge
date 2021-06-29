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
    @State var weeks: [Week]?
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ZStack(alignment: .topLeading) {
                        
                        Image("Top_Lunch")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height / 2.5)
                            .shadow(color: Color("Shadow"), radius: 30, x: 0.0, y: 40.0)
                            .edgesIgnoringSafeArea(.top)
                        
                        
                        VStack(alignment: .leading) {
                            
                            Text("Planejamento \nAlimentar")
                                .padding(.top, 100)
                                .foregroundColor(.white)
                                .font(.system(size: 36, weight: .semibold, design: .rounded))
                            
                            
                            
                            Text("\(userData.name), acompanhe seus resultados\npara uma vida mais saudável")
                                .padding(.top, 10)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .semibold, design: .rounded))
                            
                        }.padding(50)
                    }.padding(.bottom, 30)
                    
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
                                    .foregroundColor(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
                            }
                            Spacer()
                            Text(String(selectedWeek.name))
                                .padding(.horizontal, 40)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(Color("TextColor"))
                            Spacer()
                            Button(action: {
                                if selectedWeekIndex < userData.weeks.count - 1 {
                                    selectedWeekIndex += 1
                                }
                                
                                selectedWeek = userData.weeks[selectedWeekIndex]
                                selectedDay = userData.weeks[selectedWeekIndex].days[0]
                            }) {
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
                            }
                        }.padding(.bottom, 20)
                        .padding(.horizontal, 40)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 350, height: 80, alignment: .center)
                            .cornerRadius(10)
                            .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                            .padding(10)
                        HStack {
                            ForEach(selectedWeek.days) { day in
                                Button(action: {
                                    selectedDay = day
                                    print("Dia selecionado:")
                                    print(selectedDay)
                                }) {
                                    VStack {
                                        Spacer()
                                        Text(String(day.dayOfMonth))
                                            .font(.system(size: 15, weight: .bold, design: .rounded))
                                        Spacer()
                                        Text(day.abbreviation)
                                            .font(.system(size: 13, weight: .bold, design: .rounded))
                                        Spacer()
                                    }
                                    .padding(2)
                                    .frame(width: 34, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .offset()
                                    .foregroundColor( Color(.white))
                                    .padding(4)
                                    .background( Color("DefaultBlue"))
                                    .cornerRadius(10000)
                                }
                            }
                        }.padding(.horizontal, 10)
                    }.padding(.bottom,15)
                    
                    if !selectedWeek.isPlanned {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 350, height: 120, alignment: .center)
                                .cornerRadius(10)
                                .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                            Text("Parece que você não planejou nenhuma refeição para essa semana :(")
                                .padding(.horizontal, 20)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("TextColor"))
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                            
                        }
                        .padding(20)
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
                            Text("Planejar agora")
                                .font(.system(size: 18, weight: .medium, design: .rounded))
                                .bold()
                                .foregroundColor(.white)
                                .frame(width: 280, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
                                .cornerRadius(10)
                        }
                        Spacer()
                    }
                    else {
                        if selectedDay!.meals.count > 0 {
                            VStack {
                                ForEach(selectedDay!.meals) { meal in
                                    NavigationLink(destination: MealView(meal: meal)) {
                                        MealCardView(meal: meal)
                                    }.padding(15)
                                }
                            }.padding(.bottom, 40)
                        }
                    }
                }
            }.navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.top)
        }.navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            weeks = CalendarManager.shared.loadWeeks(date: today, weeks: userData.weeks, number: 4)
            selectedWeek = CalendarManager.shared.searchWeek(date: today, weeks: weeks!)
            selectedWeekIndex = CalendarManager.shared.indexOf(chosenWeek: selectedWeek, weeks: weeks!)
        }
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView()
    }
}
