//
//  OnboardingLeguminosasView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingLeguminosasView: View {
    
    @State var feijoes = appData.allFeijoes
    @State var navigationActive: Bool = false
    
    func fetchFeijoes(){
        let feijoes = UserDefaultsManager.fetchFeijoes() ?? []
        self.feijoes = appData.allFeijoes.map{ feijao -> Food in
            var feijao = feijao
            if !feijoes.filter({ leguminosa in
                feijao.id == leguminosa.id
            }).isEmpty{
                feijao.isSelected = true
            }
            return feijao
        }
    }
    
    var body: some View {
        
        VStack{
            ZStack(alignment: .top){
                OnboardingFoodTypeSelectionView(typeOfFood: "leguminosa", image: "Leguminous_Wave_BG")
                    .ignoresSafeArea()
                
            }
            .ignoresSafeArea()
            .frame(height: 250)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    ForEach(Array(zip(feijoes, feijoes.indices)), id: \.1) { leguminosa,i in
                        OnboardingFoodSelectionView(food: self.$feijoes[i], didSelected: leguminosa.isSelected)
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingVegetaisView(),
                    isActive: $navigationActive,
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                            .onTapGesture {
                                navigationActive = true
                                UserDefaultsManager.setFeijoes(model: feijoes)
                                self.fetchFeijoes()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchFeijoes()
        }
        .onChange(of: self.feijoes, perform: { value in
            print("Leguminosas alterou")
            print(value)
        })
    }
}

struct OnboardingLeguminosasView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingLeguminosasView()
    }
}
