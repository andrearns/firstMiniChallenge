//
//  OnboardingCereaisView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI



struct OnboardingCereaisView: View {
    
    @State var cereais = appData.allCereais
    @State var navigationActive: Bool = false
    
    func fetchCereais(){
        let cereais = UserDefaultsManager.fetchCereais() ?? []
        self.cereais = appData.allCereais.map{ item -> Food in
            var item = item
            if !cereais.filter({ cereal in
                item.id == cereal.id
            }).isEmpty{
                item.isSelected = true
            }
            return item
        }

    }
    
    var body: some View {
        
        VStack{
            ZStack(alignment: .top){
                OnboardingFoodTypeSelectionView(typeOfFood: "cereais", image: "Cereal_Wave_BG")
                    .ignoresSafeArea()
                
            }
            .ignoresSafeArea()
            .frame(height: 250)
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    ForEach(Array(zip(cereais, cereais.indices)), id: \.1) { cereal,i in
                        OnboardingFoodSelectionView(food: self.$cereais[i], didSelected: cereal.isSelected)
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
                                UserDefaultsManager.setCereais(model: cereais)
                                self.fetchCereais()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear {
            self.fetchCereais()
        }
    }
}


struct OnboardingCereaisView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCereaisView()
    }
}
