//
//  OnboardingLaticíniosView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingLaticiniosView: View {
    
    @State var laticinios = appData.allLeitesEQueijos
    @State var navigationActive: Bool = false
    
    func fetchLaticinios(){
        let laticinios = UserDefaultsManager.fetchLaticinios() ?? []
        self.laticinios = appData.allLeitesEQueijos.map{ leite -> Food in
            var leite = leite
            if !laticinios.filter({ laticinio in
                leite.id == laticinio.id
            }).isEmpty{
                leite.isSelected = true
            }
            return leite
        }
    }
    
    var body: some View {
        
        
        VStack{
            ZStack(alignment: .top){
                OnboardingFoodTypeSelectionView(typeOfFood: "laticínios", image: "Dairy_Wave_BG")
                    .ignoresSafeArea()
                
            }
            .ignoresSafeArea()
            .frame(height: 250)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    ForEach(Array(zip(laticinios, laticinios.indices)), id: \.1) { laticinio,i in
                        OnboardingFoodSelectionView(food: self.$laticinios[i], didSelected: laticinio.isSelected)
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
                                UserDefaultsManager.setLaticinios(model: laticinios)
                                self.fetchLaticinios()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchLaticinios()
        }
    }
}

struct OnboardingLaticiniosView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingLaticiniosView()
    }
}
