//
//  OnboardingVegetaisView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI



struct OnboardingVegetaisView: View {
    var body: some View {
        
        VStack{
            ZStack(alignment: .top){
                OnboardingFoodTypeSelectionView(typeOfFood: "vegetais", image: "Vegetables_Wave_BG")
                    .ignoresSafeArea()
                
            }
            .ignoresSafeArea()
            .frame(height: 250)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    ForEach(appData.allLegumesEVerduras, id: \.id) { food in
                        OnboardingFoodSelectionView(foodType: Food(name: food.name, category: food.category, diet: food.diet))
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingCereaisView(),
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
//}
}
}

struct OnboardingVegetaisView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingVegetaisView()
    }
}
