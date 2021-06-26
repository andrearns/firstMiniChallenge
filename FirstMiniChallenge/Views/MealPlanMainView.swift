//
//  MealPlanMainView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 24/06/21.
//

import SwiftUI

struct MealPlanMainView: View {
    var dayOfWeek = ["seg", "ter", "qua", "qui", "sex","sáb"]
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
        VStack {
            ZStack(alignment: .leading) {
                
                Image("Top_Lunch")
                    .resizable()
                    .frame(width: 420, height: 350, alignment: .center)
                    .shadow(color: Color("Shadow"), radius: 30, x: 0.0, y: 40.0)
                    .ignoresSafeArea()
                
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
            }.padding(20)
            
            HStack{
                Image(systemName: "chevron.left")
                    .foregroundColor(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
                Text("Semana Atual")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(Color("TextColor"))
                
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
            }.padding()
            
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                
                HStack {
                    ForEach(dayOfWeek, id: \.self){ day in
                        
                        Text("\(day)")
                            .offset()
                            .font(.system(size: 15, weight: .bold, design: .rounded))
                            .foregroundColor(Color("TextColor"))
                            .padding(5)
                        
                    }
                }
                
            }.padding(.bottom,15)
            
            
            VStack {
                
                ForEach(meals, id: \.id) { meal in
                    MealCardView(meal: meal)
                }.padding(15)
                
            }.padding(.horizontal, 20)
            
            Spacer()
            
        }
    }
}


struct MealPlanMainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MealPlanMainView()
            
        }
    }
}
