//
//  WeekView.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 26/06/21.
//

import SwiftUI

struct WeekView: View {
    @State var today = Date()
    @State var weeks: [Week] = []
    @State var selectedWeekIndex: Int = 0
    @State var selectedDayIndex: Int = 0
    var selectedWeek: Week? {
        guard selectedWeekIndex >= 0 && selectedWeekIndex < weeks.count else {
            return nil
        }
        return weeks[selectedWeekIndex]
    }
    var selectedDay: Day? {
        guard let selectedWeek = selectedWeek,
              selectedDayIndex >= 0 && selectedDayIndex < selectedWeek.days.count else {
            return nil
        }
        return selectedWeek.days[selectedDayIndex]
    }
    
    @State var name: String = ""
    @State var diet: Diet = .none
    @State var feijoes: [Food] = []
    @State var cereais: [Food] = []
    @State var raizesETuberculos: [Food] = []
    @State var legumesEVerduras: [Food] = []
    @State var frutas: [Food] = []
    @State var castanhasENozes: [Food] = []
    @State var leitesEQueijos: [Food] = []
    @State var carnesEOvos: [Food] = []
    
    func fetchDiet() {
        let diet = UserDefaultsManager.fetchDiet() ?? .regular
        self.diet = diet
    }
    
    func fetchWeeks() {
        let weeks = UserDefaultsManager.fetchWeeks() ?? []
        self.weeks = weeks
    }
    
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
                            
                            Text("Cardápio \nda semana")
                                .padding(.top, 100)
                                .foregroundColor(.white)
                                .font(.system(size: 36, weight: .semibold, design: .rounded))
                            
                            
                            
                            Text("\(name), veja o que você vai comer\nnos próximos dias!")
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
                            }) {
                                Image(systemName: "chevron.left")
                                    .foregroundColor(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
                            }
                            Spacer()
                            Text(String(selectedWeek?.name ?? "Semana"))
                                .padding(.horizontal, 40)
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                                .foregroundColor(Color("TextColor"))
                            Spacer()
                            Button(action: {
                                if selectedWeekIndex < weeks.count - 1 {
                                    selectedWeekIndex += 1
                                }
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
                            if let selectedWeek = selectedWeek {
                                ForEach(Array(selectedWeek.days.enumerated()), id: \.offset) { index, day in
                                    Button(action: {
                                        selectedDayIndex = index
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
                                            .foregroundColor(selectedDayIndex == index ? .white : Color("TextColor"))
                                            .padding(4)
                                            .background(selectedDayIndex == index ? Color("DefaultBlue") : .white)
                                            .cornerRadius(10000)
                                    }
                                }
                            }
                        }.padding(.horizontal, 10)
                    }.padding(.bottom,15)
                    
                    if !(selectedWeek?.isPlanned ?? true) {
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
                            guard let selectedWeek = selectedWeek else { return }
                            let plannedWeek = MealManager.shared.planWeek(week: selectedWeek, diet: diet, feijoes: self.feijoes, cereaisCafeELanche: userData.selectedCereaisCafeELanche, cereaisAlmocoEJanta: userData.selectedCereaisAlmocoEJanta, raizesETuberculos: self.raizesETuberculos, legumesEVerduras: self.legumesEVerduras, frutas: self.frutas, castanhasENozes: self.castanhasENozes, leitesEQueijos: self.leitesEQueijos, carnesEOvos: self.carnesEOvos, bebidas: userData.selectedBebidas)
                            self.weeks[selectedWeekIndex] = plannedWeek
                            print("WeekView: \(weeks)")
                            UserDefaultsManager.setWeeks(model: self.weeks)
                            self.fetchWeeks()
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
                        if (selectedDay?.meals.count ?? 0) > 0 {
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
            .navigationBarHidden(true)
        }.navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.fetchWeeks()
            
            feijoes = UserDefaultsManager.fetchFeijoes()!
            cereais = UserDefaultsManager.fetchCereais()!
            raizesETuberculos = UserDefaultsManager.fetchRaizesETuberculos()!
            legumesEVerduras = UserDefaultsManager.fetchLegumesEVerduras()!
            frutas = UserDefaultsManager.fetchFrutas()!
            castanhasENozes = UserDefaultsManager.fetchCastanhasENozes()!
            leitesEQueijos = UserDefaultsManager.fetchLaticinios()!
            carnesEOvos = UserDefaultsManager.fetchCarnesEOvos()!
            name = UserDefaultsManager.fetchName()!
            diet = UserDefaultsManager.fetchDiet()!

            weeks = CalendarManager.shared.loadWeeks(date: today, weeks: weeks, number: 4)
            UserDefaultsManager.setWeeks(model: weeks)
            
            let selectedWeek = CalendarManager.shared.searchWeek(date: today, weeks: weeks)
            selectedWeekIndex = CalendarManager.shared.indexOf(chosenWeek: selectedWeek, weeks: weeks)
            selectedDayIndex = CalendarManager.shared.indexOf(date: today, days: selectedWeek.days)
        }
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView()
    }
}
