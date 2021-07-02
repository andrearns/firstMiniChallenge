//
//  FoodView.swift
//  FirstMiniChallenge
//
//  Created by Ana C S Costa on 27/06/21.
//

import SwiftUI

struct FoodView: View {
    @State var food: Food

    @State var feijoes: [Food] = []
    @State var cereais: [Food] = []
    @State var cereaisCafeELanche: [Food] = []
    @State var cereaisAlmocoEJanta: [Food] = []
    @State var raizesETuberculos: [Food] = []
    @State var legumesEVerduras: [Food] = []
    @State var frutas: [Food] = []
    @State var castanhasENozes: [Food] = []
    @State var leitesEQueijos: [Food] = []
    @State var carnesEOvos: [Food] = []
    
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
                        if carnesEOvos.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: carnesEOvos)
                        }
                    case .castanhasENozes:
                        if castanhasENozes.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: castanhasENozes)
                        }
                    case .cereaisAlmocoEJanta:
                        if cereaisAlmocoEJanta.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: cereaisAlmocoEJanta)
                        }
                    case .cereaisCafeELanche:
                        if cereaisCafeELanche.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: cereaisCafeELanche)
                        }
                    case .feijoes:
                        if feijoes.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: feijoes)
                        }
                    case .frutas:
                        if frutas.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: frutas)
                        }
                    case .legumesEVerduras:
                        if legumesEVerduras.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: legumesEVerduras)
                        }
                    case .leiteEQueijos:
                        if leitesEQueijos.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: leitesEQueijos)
                        }
                    case .raizesETuberculos:
                        if raizesETuberculos.count > 0 {
                            self.food = MealManager.shared.sortFood(in: food.category, foods: raizesETuberculos)
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
        .onAppear {
            feijoes = UserDefaultsManager.fetchFeijoes()!
            cereais = UserDefaultsManager.fetchCereais()!
            cereaisCafeELanche = cereais.filter { cereal in
                cereal.category == .cereaisCafeELanche
            }
            cereaisAlmocoEJanta = cereais.filter { cereal in
                cereal.category == .cereaisAlmocoEJanta
            }
            raizesETuberculos = UserDefaultsManager.fetchRaizesETuberculos()!
            legumesEVerduras = UserDefaultsManager.fetchLegumesEVerduras()!
            frutas = UserDefaultsManager.fetchFrutas()!
            castanhasENozes = UserDefaultsManager.fetchCastanhasENozes()!
            leitesEQueijos = UserDefaultsManager.fetchLaticinios()!
            carnesEOvos = UserDefaultsManager.fetchCarnesEOvos()!
        }
        

    }
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(food: userData.selectedCarnesEOvos[0])
    }
}
