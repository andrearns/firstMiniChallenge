//
//  OnboardingTuberculosView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingTuberculosView: View {
    
    @State var tuberculos = appData.allRaizesETuberculos
    @State var isLoading: Bool = false
    @State var navigationActive: Bool = false
    
    func fetchTuberculos(){
        let tuberculos = UserDefaultsManager.fetchTuberculos() ?? []
        self.tuberculos = appData.allFrutas.map{ raiz -> Food in
            var raiz = raiz
            if !tuberculos.filter({ tuberculo in
                raiz.id == tuberculo.id
            }).isEmpty{
                raiz.isSelected = true
            }
            return raiz
        }
    }
    
    var body: some View {
        
        ZStack {
            VStack{
                ZStack(alignment: .top){
                    OnboardingFoodTypeSelectionView(typeOfFood: "tubérculos", image: "Tubercles_Wave_BG")
                        .ignoresSafeArea()
                }
                .ignoresSafeArea()
                .frame(height: 250)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack{
                        ForEach(Array(zip(tuberculos, tuberculos.indices)), id: \.1) { tuberculo,i in
                            OnboardingFoodSelectionView(food: self.$tuberculos[i], didSelected: tuberculo.isSelected)
                        }
                    }
                }
                VStack{
                    NavigationLink(
                        destination: OnboardingPreparing(),
                        isActive: $navigationActive,
                        label: {
                            Text("Próximo")
                                .foregroundColor(.white)
                                .frame(width: 280, height: 60, alignment: .center)
                                .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                                .cornerRadius(10)
                                .onTapGesture {
                                    navigationActive = true
                                    UserDefaultsManager.setTuberculos(model: tuberculos)
                                    self.fetchTuberculos()
                                }
                        })
                }.padding(.bottom,50)
            }
            if isLoading {
                ZStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            OnboardingPreparing()
                            Spacer()
                        }
                        Spacer()
                    }
                }
                .background(Color(.white))
            }
        }.edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchTuberculos()
        }
    }
}

struct OnboardingTuberculosView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTuberculosView()
    }
}
