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
        let oleaginosas = UserDefaultsManager.fetchOleaginosas()
        self.oleaginosas = oleaginosas ?? []
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
                    ForEach(oleaginosas.indices, id: \.self) { i in
                        OnboardingFoodSelectionView(food: self.$oleaginosas[i])
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
        
        
    }
    
}

struct OnboardingOleaginosasView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingOleaginosasView()
    }
}
