//
//  OnboardingOleaginosasView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingOleaginosasView: View {
    
    @State var oleaginosas = appData.allCastanhasENozes
    @State var navigationActive: Bool = false
    
    func fetchOleaginosas(){
        let oleaginosas = UserDefaultsManager.fetchOleaginosas() ?? []
        self.oleaginosas = appData.allCastanhasENozes.map{ castanha -> Food in
            var castanha = castanha
            if !oleaginosas.filter({ oleaginosa in
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
                    ForEach(Array(zip(oleaginosas, oleaginosas.indices)), id: \.1) { oleaginosa,i in
                        OnboardingFoodSelectionView(food: self.$oleaginosas[i], didSelected: oleaginosa.isSelected)
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
                                UserDefaultsManager.setOleaginosas(model: oleaginosas)
                                self.fetchOleaginosas()
                            }
                    })
            }.padding(.bottom,50)
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchOleaginosas()
        }
        .onChange(of: self.oleaginosas, perform: { value in
            print("Oleaginosas alterou")
            print(value)
        })
        
        
    }
    
}

struct OnboardingOleaginosasView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingOleaginosasView()
    }
}
