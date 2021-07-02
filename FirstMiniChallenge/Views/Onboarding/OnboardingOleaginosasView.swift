//
//  OnboardingOleaginosasView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingOleaginosasView: View {
    
    @State var castanhasENozes = appData.allCastanhasENozes
    @State var navigationActive: Bool = false
    
    func fetchCastanhasENozes(){
        let castanhasENozes = UserDefaultsManager.fetchCastanhasENozes() ?? []
        self.castanhasENozes = appData.allCastanhasENozes.map{ castanha -> Food in
            var castanha = castanha
            if !castanhasENozes.filter({ oleaginosa in
                castanha.id == oleaginosa.id
            }).isEmpty{
                castanha.isSelected = true
            }
            return castanha
        }
        
    }
    
    var body: some View {
        VStack{
            ZStack(alignment: .top){
                OnboardingFoodTypeSelectionView(typeOfFood: "oleaginosas", image: "Nuts_Wave_BG")
                    .ignoresSafeArea()
                
            }
            .ignoresSafeArea()
            .frame(height: 250)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    ForEach(Array(zip(castanhasENozes, castanhasENozes.indices)), id: \.1) { oleaginosa,i in
                        OnboardingFoodSelectionView(food: self.$castanhasENozes[i], didSelected: oleaginosa.isSelected)
                    }
                }
            }
            
            
            VStack{
                NavigationLink(
                    destination: OnboardingLaticiniosView(),
                    isActive: $navigationActive,
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                            .onTapGesture {
                                navigationActive = true
                                UserDefaultsManager.setCastanhasENozes(model: castanhasENozes)
                                self.fetchCastanhasENozes()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchCastanhasENozes()
        }
        .onChange(of: self.castanhasENozes, perform: { value in
            print("Castanhas e nozes alterou")
            print(value)
        })
        
        
    }
    
}

struct OnboardingOleaginosasView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingOleaginosasView()
    }
}
