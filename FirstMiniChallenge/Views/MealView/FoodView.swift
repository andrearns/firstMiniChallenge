//
//  FoodView.swift
//  FirstMiniChallenge
//
//  Created by Ana C S Costa on 27/06/21.
//

import SwiftUI

struct FoodView: View {
    @State var food: Food

    var body: some View {
        HStack {
            Image(food.category.iconTypeFood)
                .frame(width: 76, height: 76)
                .padding(.leading, 15)
                .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                .scaleEffect(CGSize(width: 0.5, height: 0.5))

            VStack (alignment: .leading) {
                Text(food.name)
                .foregroundColor(.primary)
                .bold()
                .font(.headline)
                    .padding(.bottom, 5)
                Text(food.category.textTypeFood)
                    .foregroundColor(.secondary)
                    .font(.caption)
            }
            Spacer()
            Button(action: {
                let oldFood = food
                
                while oldFood == food {
                    switch (food.category) {
                    case .bebidas:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedBebidas)
                        }
                    case .carnesEOvos:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedCarnesEOvos)
                        }
                    case .castanhasENozes:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedCastanhasENozes)
                        }
                    case .cereaisAlmocoEJanta:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedCereaisAlmocoEJanta)
                        }
                    case .cereaisCafeELanche:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedCereaisCafeELanche)
                        }
                    case .feijoes:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedFeijoes)
                        }
                    case .frutas:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedFrutas)
                        }
                    case .legumesEVerduras:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedLegumesEVerduras)
                        }
                    case .leiteEQueijos:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedLeitesEQueijos)
                        }
                    case .raizesETuberculos:
                        if userData.selectedBebidas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: userData.selectedRaizesETuberculos)
                        }
                    default:
                        print("Erro")
                    }
                }
               
                print(food)
            }) {
                Image(systemName: "arrow.clockwise")
                    .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .font(Font.system(size: 18, weight: .bold))
                    .padding()
                    .foregroundColor(.secondary)
            }
            
        }
        .padding(.top)
        

    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(food: userData.selectedCarnesEOvos[0])
    }
}
