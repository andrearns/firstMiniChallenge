//
//  OnboardingIsVeggieView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI


struct OnboardingIsVeggieView: View {
    @State var veggieNavigationActive : Bool = false
    @State var diet: Diet = .none
    @State var navigationActive: Bool = false
    
    func fetchDiet(){
        let diet = UserDefaultsManager.fetchDiet() ?? .none
        self.diet = diet
    }
    
    var body: some View {
        VStack {
            Spacer()
            ZStack(alignment: .top){
                Image("Blue_Wave_BG")
                    .ignoresSafeArea()
                    .frame(width: UIScreen.main.bounds.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaleEffect(CGSize(width: 0.5, height: 0.5))
                Spacer()
            }
            Spacer()
            
            VStack{
                VStack(alignment: . leading){
                    Text("Você é \nvegetariano (a)?")
                        .font(.system(size: 36, weight: .semibold, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                        .frame(width: 350, height: 100, alignment: .leading)
                }
                .padding()
            }
            VStack(alignment:.center){
                HStack(alignment: .center){
                    
                    NavigationLink(
                        destination: OnboardingMealView(),
                        isActive: $veggieNavigationActive)
                    {
                        
                        
                        OnboardingisVeggieButtomView(name: "Sou \nVegetariano", diet: .regular, button: "button_SouVeg")
                            .onTapGesture {
                                
                                veggieNavigationActive = true
                                diet = .veggie
                                UserDefaultsManager.setDiet(model: diet)
                                self.fetchDiet()
                            }
                    }
                    
                    NavigationLink(
                        destination: OnboardingMealView(),
                        isActive: $navigationActive)
                    {
                        
                        
                        OnboardingisVeggieButtomView(name: "Não sou \nVegetariano", diet: .veggie, button: "button_NaoSouVeg")
                            .onTapGesture {
                                navigationActive = true
                                diet = .regular
                                UserDefaultsManager.setDiet(model: diet)
                                self.fetchDiet()
                            }
                    }
                }
            }
            
            Spacer()
            
            VStack{
                Image("Blue_Wave_2_BG")
                    .ignoresSafeArea()
                    .frame(width: UIScreen.main.bounds.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaleEffect(CGSize(width: 0.6, height: 0.6))
            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear{
            self.fetchDiet()
        }
        
    }
    
    
    struct OnboardingIsVeggieView_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingIsVeggieView()
        }
    }
}
