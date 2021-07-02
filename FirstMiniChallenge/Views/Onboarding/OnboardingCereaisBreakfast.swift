//
//  OnboardingCereaisBreakfast.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 01/07/21.
//

import SwiftUI

struct OnboardingCereaisBreakfastView: View {
    
    @State var cereaisBreakfast = appData.allCereaisCafeDaManha
    @State var navigationActive: Bool = false
    
    func fetchCereais(){
        let cereaisBreakfast = UserDefaultsManager.fetchCereais() ?? []
        self.cereaisBreakfast = appData.allCereaisCafeDaManha.map{ item -> Food in
            var item = item
            if !cereaisBreakfast.filter({ cereal in
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
                    ForEach(Array(zip(cereaisBreakfast, cereaisBreakfast.indices)), id: \.1) { cereal,i in
                        OnboardingFoodSelectionView(food: self.$cereaisBreakfast[i], didSelected: cereal.isSelected)
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
                                UserDefaultsManager.setCereais(model: cereaisBreakfast)
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


struct OnboardingCereaisBreakfastView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCereaisView()
    }
}
