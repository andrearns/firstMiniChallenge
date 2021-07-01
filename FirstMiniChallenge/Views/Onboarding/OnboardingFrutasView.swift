//
//  OnboardingFrutasView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI


struct OnboardingFrutasView: View {
    @State var  frutas = appData.allFrutas
    var body: some View {
        
        VStack{
            ZStack(alignment: .top){
                OnboardingFoodTypeSelectionView(typeOfFood: "frutas", image: "Fruits_Wave_BG")
                    .ignoresSafeArea()
                
            }
            .ignoresSafeArea()
            .frame(height: 250)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    ForEach(frutas.indices, id: \.self) { i in
                        OnboardingFoodSelectionView(food: self.$frutas[i])
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingTuberculosView(),
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

struct OnboardingFrutasView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFrutasView()
    }
}
