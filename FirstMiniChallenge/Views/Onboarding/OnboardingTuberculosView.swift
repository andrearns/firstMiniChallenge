//
//  OnboardingTuberculosView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI



struct OnboardingTuberculosView: View {
    var body: some View {
          
                
        VStack{
            VStack{
                OnboardingFoodTypeSelectionView(typeOfFood: "raízes e tubérculos", image: "Tubercles_Wave_BG")
            }
            .ignoresSafeArea()
            .padding(.top, -119)
            .padding(.bottom, 10)
            .padding(.leading,30)
            
        ScrollView(.vertical, showsIndicators: false) {
                
            VStack{
                Spacer()
                ForEach(appData.allRaizesETuberculos, id: \.id) { food in
                    OnboardingFoodSelectionView(foodType: Food(name: food.name, category: food.category, diet: food.diet))
                }
            }
        }
            Spacer()

            VStack{
                NavigationLink(
                    destination: OnboardingVegetaisView(),
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                })
            }
            .padding(.bottom, 30)
        
        //Spacer()
    }
//}
}
}

struct OnboardingTuberculosView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTuberculosView()
    }
}