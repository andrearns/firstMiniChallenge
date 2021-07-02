//
//  OnboardingVegetaisView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingVegetaisView: View {
    
    @State var legumesEVerduras = appData.allLegumesEVerduras
    @State var navigationActive: Bool = false
    
    func fetchLegumesEVerduras(){
        let legumesEVerduras = UserDefaultsManager.fetchLegumesEVerduras() ?? []
        self.legumesEVerduras = appData.allLegumesEVerduras.map{ verde -> Food in
            var verde = verde
            if !legumesEVerduras.filter({ vegetal in
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
                    ForEach(Array(zip(legumesEVerduras, legumesEVerduras.indices)), id: \.1) { vegetal,i in
                        OnboardingFoodSelectionView(food: self.$legumesEVerduras[i], didSelected: vegetal.isSelected)
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingCereaisView(),
                    isActive: $navigationActive,
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                            .onTapGesture {
                                navigationActive = true
                                UserDefaultsManager.setLegumesEVerduras(model: legumesEVerduras)
                                self.fetchLegumesEVerduras()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchLegumesEVerduras()
        }
    }
}

struct OnboardingVegetaisView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingVegetaisView()
    }
}
