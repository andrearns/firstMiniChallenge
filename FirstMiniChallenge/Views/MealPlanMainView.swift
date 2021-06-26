//
//  MealPlanMainView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 24/06/21.
//

import SwiftUI

struct MealPlanMainView: View {
    var dayOfWeek = ["dom","seg", "ter", "qua", "qui", "sex","sáb"]
    
    @State var isButtonPressed = false
    @State var pressedDay: String?
    
    
    @State var meals = [
        Meal(name: "CafédaManhã", imageName: "cereals_meal_plan", type: .cafeDaManha, diet: .regular, isPlanned: true, foods: [
                Food(name: "Fruta", category: .frutas, diet: .veggie),
                Food(name: "Suco", category: .frutas, diet: .regular),
                Food(name: "Aveia", category: .cereais, diet: .veggie)]),
        
        Meal(name: "Almoço", imageName: "cereals_meal_plan", type: .almoco, diet: .regular, isPlanned: true, foods: [
                Food(name: "Abóbora", category: .legumesEVerduras, diet: .veggie),
                Food(name: "Peixe", category: .carnesEOvos, diet: .regular),
                Food(name: "Arroz integral", category: .cereais, diet: .veggie)]),
        
        Meal(name: "Jantar", imageName: "cereals_meal_plan", type: .janta, diet: .regular, isPlanned: true, foods: [
                Food(name: "Abóbora", category: .legumesEVerduras, diet: .veggie),
                Food(name: "Peixe", category: .carnesEOvos, diet: .regular),
                Food(name: "Arroz integral", category: .cereais, diet: .veggie)]),
        
        Meal(name: "Lanche", imageName: "cereals_meal_plan", type: .lanche, diet: .regular, isPlanned: true, foods: [
                Food(name: "Abóbora", category: .legumesEVerduras, diet: .veggie),
                Food(name: "Peixe", category: .carnesEOvos, diet: .regular),
                Food(name: "Arroz integral", category: .cereais, diet: .veggie)])
    ]
    
    
    
    var body: some View {
        
        
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack() {
                
                
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
                        
                        
                        
                        Text("Mario, acompanhe seus resultados\npara uma vida mais saudável")
                            .padding(.top, 10)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .semibold, design: .rounded))
                        
                    }.padding(50)
                }.padding(.bottom, 30)
                
                
                
                WeekSelectorView()
                DaySelectorView()
                
                VStack {
                    
                    ForEach(meals, id: \.id) { meal in
                        Button(action: {
                            print("button pressed")
                        }) {
                            MealCardView(meal: meal)
                        }.padding(15)
                    }
                }.padding(.horizontal, 20)
                
                Spacer()
                
            }
        }.navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MealPlanMainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MealPlanMainView()
        }
    }
}
