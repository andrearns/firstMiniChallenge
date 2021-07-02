//
//  OnboardingPreparing.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 29/06/21.
//

import SwiftUI

struct OnboardingPreparing: View {
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
    
    @State var diet: Diet = .none
    @State var feijoes: [Food] = []
    @State var cereais: [Food] = []
    @State var raizesETuberculos: [Food] = []
    @State var legumesEVerduras: [Food] = []
    @State var frutas: [Food] = []
    @State var castanhasENozes: [Food] = []
    @State var leitesEQueijos: [Food] = []
    @State var carnesEOvos: [Food] = []
    
    @State var animate = false
    @State var isOnboardingCompleted = false
    
    func fetchOnboardingCompleted(){
        let isOnboardingCompleted = UserDefaultsManager.fetchOnboardingCompleted() ?? false
        self.isOnboardingCompleted = isOnboardingCompleted
    }
    
    func fetchDiet() {
        let diet = UserDefaultsManager.fetchDiet() ?? .regular
        self.diet = diet
    }
    
    func fetchWeeks() {
        let weeks = UserDefaultsManager.fetchWeeks() ?? []
        self.weeks = weeks
    }
    
    
    var body: some View {
        VStack(alignment: .center){
            Text("Preparando o seu cardápio personalizado...")
                .font(.system(size: 24, weight: .semibold, design: .rounded))
                .foregroundColor(Color("TextColor"))
                .padding()
                .multilineTextAlignment(.center)
            
            Image("Loading_Plate")
                .rotationEffect(.init(degrees: self.animate ? 360 : 0))
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))

        }.navigationBarBackButtonHidden(true)
        .onAppear {
            self.animate.toggle()
            
            self.fetchWeeks()
            
            feijoes = UserDefaultsManager.fetchFeijoes()!
            cereais = UserDefaultsManager.fetchCereais()!
            raizesETuberculos = UserDefaultsManager.fetchRaizesETuberculos()!
            legumesEVerduras = UserDefaultsManager.fetchLegumesEVerduras()!
            frutas = UserDefaultsManager.fetchFrutas()!
            castanhasENozes = UserDefaultsManager.fetchCastanhasENozes()!
            leitesEQueijos = UserDefaultsManager.fetchLaticinios()!
            carnesEOvos = UserDefaultsManager.fetchCarnesEOvos()!
            diet = UserDefaultsManager.fetchDiet()!

            weeks = CalendarManager.shared.loadWeeks(date: today, weeks: weeks, number: 4)
            UserDefaultsManager.setWeeks(model: weeks)
            
            let selectedWeek = CalendarManager.shared.searchWeek(date: today, weeks: weeks)
            selectedWeekIndex = CalendarManager.shared.indexOf(chosenWeek: selectedWeek, weeks: weeks)
            
            let plannedWeek = MealManager.shared.planWeek(week: selectedWeek, diet: diet, feijoes: self.feijoes, cereaisCafeELanche: userData.selectedCereaisCafeELanche, cereaisAlmocoEJanta: userData.selectedCereaisAlmocoEJanta, raizesETuberculos: self.raizesETuberculos, legumesEVerduras: self.legumesEVerduras, frutas: self.frutas, castanhasENozes: self.castanhasENozes, leitesEQueijos: self.leitesEQueijos, carnesEOvos: self.carnesEOvos, bebidas: userData.selectedBebidas)
            
            self.weeks[selectedWeekIndex] = plannedWeek
            print("WeekView: \(weeks)")
            UserDefaultsManager.setWeeks(model: self.weeks)
            self.fetchWeeks()
            
            isOnboardingCompleted = true
            UserDefaultsManager.setOnboardingCompleted(model: isOnboardingCompleted)
            self.fetchOnboardingCompleted()
        }
        
    }
}

struct OnboardingPreparing_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPreparing()
    }
}
