//
//  MealCardView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 25/06/21.
//

import SwiftUI

struct MealCardView: View {
    @State var meal: Meal
   
    var mealNames: String {
        meal.foods.map { food in
            food.name
        }.joined(separator: ", ")
    }
    
    var body: some View {
        
        ZStack(alignment: .leading){
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
            
            HStack{
                Image(meal.type.imageName)
                    .resizable()
                    .frame(width: 76, height: 76)
                    .padding(10)
                VStack(alignment: .leading){
                  
                    Text(meal.type.name)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .padding(5)
                        .background(Color(meal.type.colorName))
                        .cornerRadius(4)
                        
                    
                    Text(mealNames)
                        .foregroundColor(Color("TextColor"))
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                }
                
            }.padding(10)
            
        } .frame(height: 95)
    }
}

struct MealCardView_Previews: PreviewProvider {
    static var previews: some View {
        MealCardView(meal:
                        Meal(imageName: "cereals_meal_plan", type: .lunch, option: appData.breakfastOptions[0], diet: .regular, isPlanned: true, foods: [
                Food(name: "Abóbora", category: .legumesEVerduras, diet: .veggie),
                Food(name: "Peixe", category: .carnesEOvos, diet: .regular),
                Food(name: "Arroz integral", category: .cereaisAlmocoEJanta, diet: .veggie)
                            
            ], hasDrink: true, hasFruitOutsidePlate: false))
            
            
    }
}
