//
//  OnboardingLeguminosasView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

var allFeijoes = data.allFrutas



struct OnboardingLeguminosasView: View {
    
   
    var body: some View {
        
   // NavigationView{
            
                VStack{
                    VStack{
                        OnboardingFoodTypeSelectionView(typeOfFood: "leguminosa", image: "Leguminous_Wave_BG")
                    }
                    .ignoresSafeArea()
                    .padding(.top, -119)
                    .padding(.bottom, 10)
                    .padding(.leading,30)
                    
                ScrollView(.vertical, showsIndicators: false) {
                        
                    VStack{
                        Spacer()
                        ForEach(data.allFeijoes, id: \.id) { food in
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
struct OnboardingLeguminosasView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingLeguminosasView()
    }
}
