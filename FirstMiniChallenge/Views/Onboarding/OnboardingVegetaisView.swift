//
//  OnboardingVegetaisView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingVegetaisView: View {
    
    @State var vegetais = appData.allLegumesEVerduras
    @State var navigationActive: Bool = false
    
    func fetchVegetais(){
        let vegetais = UserDefaultsManager.fetchVegetais() ?? []
        self.vegetais = appData.allLegumesEVerduras.map{ verde -> Food in
            var verde = verde
            if !vegetais.filter({ vegetal in
                verde.id == vegetal.id
            }).isEmpty{
                verde.isSelected = true
            }
            return verde
        }
    }
    
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
                    ForEach(Array(zip(vegetais, vegetais.indices)), id: \.1) { vegetal,i in
                        OnboardingFoodSelectionView(food: self.$vegetais[i], didSelected: vegetal.isSelected)
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingCarnesOvosView(),
                    isActive: $navigationActive,
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                            .onTapGesture {
                                navigationActive = true
                                UserDefaultsManager.setVegetais(model: vegetais)
                                self.fetchVegetais()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchVegetais()
        }
    }
}

struct OnboardingVegetaisView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingVegetaisView()
    }
}
