//
//  OnboardingCarnesOvosView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingCarnesOvosView: View {
    
    @State var carnesEOvos = appData.allCarnesEOvos
    @State var navigationActive: Bool = false
    
    func fetchCarnesEOvos(){
        let carnesEOvos = UserDefaultsManager.fetchCarnesEOvos() ?? []
        self.carnesEOvos = appData.allCarnesEOvos.map{ ovo -> Food in
            var ovo = ovo
            if !carnesEOvos.filter({ carne in
                ovo.id == carne.id
            }).isEmpty{
                ovo.isSelected = true
            }
            return ovo
        }
    }
    
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
                    ForEach(Array(zip(carnesEOvos, carnesEOvos.indices)), id: \.1) { carne,i in
                        OnboardingFoodSelectionView(food: self.$carnesEOvos[i], didSelected: carne.isSelected)
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingFrutasView(),
                    isActive: $navigationActive,
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                            .onTapGesture {
                                navigationActive = true
                                UserDefaultsManager.setCarnesEOvos(model: carnesEOvos)
                                self.fetchCarnesEOvos()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchCarnesEOvos()
        }
        
    }
}

struct OnboardingCarnesOvosView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCarnesOvosView()
    }
}
