//
//  OnboardingCarnesOvosView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingCarnesOvosView: View {
    @State var carnesEOvos = appData.allCarnesEOvos
    
    var body: some View {
              
        VStack{
            ZStack(alignment: .top){
                OnboardingFoodTypeSelectionView(typeOfFood: "preteínas", image: "Meat_Eggs_Wave_BG")
                    .ignoresSafeArea()
                
            }
            .ignoresSafeArea()
            .frame(height: 250)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    ForEach(carnesEOvos.indices, id: \.self) { i in
                       OnboardingFoodSelectionView(food: self.$carnesEOvos[i])
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingFrutasView(),
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

struct OnboardingCarnesOvosView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCarnesOvosView()
    }
}
