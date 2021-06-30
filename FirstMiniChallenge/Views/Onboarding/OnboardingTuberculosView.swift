//
//  OnboardingTuberculosView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI



struct OnboardingTuberculosView: View {
    @State var isLoading: Bool = false
    @State var navigationActive: Bool = false
    
    var body: some View {
    
        ZStack {
            VStack{
                ZStack(alignment: .top){
                    OnboardingFoodTypeSelectionView(typeOfFood: "tubérculos", image: "Tubercles_Wave_BG")
                        .ignoresSafeArea()
                }
                .ignoresSafeArea()
                .frame(height: 250)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack{
                        ForEach(appData.allRaizesETuberculos, id: \.id) { food in
                            OnboardingFoodSelectionView(foodType: Food(name: food.name, category: food.category, diet: food.diet))
                        }
                    }
                }
                VStack{
                    NavigationLink(
                        destination: WeekView(),
                        isActive: $navigationActive,
                        label: {
                            Button(action: {
                                isLoading = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 4, execute: { navigationActive = true })
                            }) {
                                Text("Próximo")
                                    .foregroundColor(.white)
                                    .frame(width: 280, height: 60, alignment: .center)
                                    .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                                    .cornerRadius(10)
                            }
                        })
                }.padding(.bottom,50)
            }
            if isLoading {
                ZStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            OnboardingPreparing()
                            Spacer()
                        }
                        Spacer()
                    }
                }
                .background(Color(.white))
            }
        }.edgesIgnoringSafeArea(.all)
}
}

struct OnboardingTuberculosView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTuberculosView()
    }
}
