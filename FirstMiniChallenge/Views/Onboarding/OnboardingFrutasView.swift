//
//  OnboardingFrutasView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI


struct OnboardingFrutasView: View {
    
    @State var frutas = appData.allFrutas
    @State var navigationActive: Bool = false
    
    func fetchFrutas(){
        let frutas = UserDefaultsManager.fetchFrutas() ?? []
        self.frutas = appData.allFrutas.map{ frutinha -> Food in
            var frutinha = frutinha
            if !frutas.filter({ fruta in
                frutinha.id == fruta.id
            }).isEmpty{
                frutinha.isSelected = true
            }
            return frutinha
        }
    }
    
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
                    ForEach(Array(zip(frutas, frutas.indices)), id: \.1) { fruta,i in
                        OnboardingFoodSelectionView(food: self.$frutas[i], didSelected: fruta.isSelected)
                    }
                }
            }
            VStack{
                NavigationLink(
                    destination: OnboardingTuberculosView(),
                    isActive: $navigationActive,
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                            .onTapGesture {
                                navigationActive = true
                                UserDefaultsManager.setFrutas(model: frutas)
                                self.fetchFrutas()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchFrutas()
        }
    }
}

struct OnboardingFrutasView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFrutasView()
    }
}
