//
//  OnboardingOleaginosasView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI



struct OnboardingOleaginosasView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                OnboardingFoodTypeSelectionView(typeOfFood: "oleaginosas", image: "Nuts_Wave_BG")
                    .ignoresSafeArea()
                
            }
            .ignoresSafeArea()
            .frame(height: 250)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    ForEach(appData.allCastanhasENozes, id: \.id) { food in
                        OnboardingFoodSelectionView(foodType: Food(name: food.name, category: food.category, diet: food.diet))
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingLaticiniosView(),
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        
       
    }

}

struct OnboardingOleaginosasView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingOleaginosasView()
    }
}
