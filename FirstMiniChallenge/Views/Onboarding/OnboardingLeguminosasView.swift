//
//  OnboardingLeguminosasView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingLeguminosasView: View {
    
    @State var leguminosas = appData.allFeijoes
    @State var navigationActive: Bool = false
    
    func fetchLeguminosas(){
        let leguminosas = UserDefaultsManager.fetchLeguminosas() ?? []
        self.leguminosas = appData.allFeijoes.map{ feijao -> Food in
            var feijao = feijao
            if !leguminosas.filter({ leguminosa in
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
                    ForEach(Array(zip(leguminosas, leguminosas.indices)), id: \.1) { leguminosa,i in
                        OnboardingFoodSelectionView(food: self.$leguminosas[i], didSelected: leguminosa.isSelected)
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingOleaginosasView(),
                    isActive: $navigationActive,
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                            .onTapGesture {
                                navigationActive = true
                                UserDefaultsManager.setLeguminosas(model: leguminosas)
                                self.fetchLeguminosas()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchLeguminosas()
        }
        .onChange(of: self.leguminosas, perform: { value in
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
