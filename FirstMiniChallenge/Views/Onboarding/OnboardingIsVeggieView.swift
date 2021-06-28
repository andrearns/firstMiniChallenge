//
//  OnboardingIsVeggieView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI


struct OnboardingIsVeggieView: View {
    var body: some View {
            VStack {
              Spacer()
                ZStack(alignment: .bottom){
                    Image("Blue_Wave_BG")
                       .frame(width: UIScreen.main.bounds.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaleEffect(CGSize(width: 0.5, height: 0.5))
                       
                        
                        
               }
               .padding(.top, -80)
              
                
                
              
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
                            
                            NavigationLink(destination:OnboardingMealView()){
                                Button(action: {
                                   print("sou veg")
                                }){
                                OnboardingisVeggieButtomView(name: "Sou \nVegetariano", diet: .regular, button: "button_SouVeg")
                                }
                                
                        }
                            
                            NavigationLink(destination:OnboardingMealView()){
                                OnboardingisVeggieButtomView(name: "Não sou \nVegetariano", diet: .veggie, button: "button_NaoSouVeg")
                           
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
                
              
                
                
            }// fim da stack principl
            .ignoresSafeArea()
    }


struct OnboardingIsVeggieView_Previews: PreviewProvider {
    static var previews: some View {
        
            OnboardingIsVeggieView()
        
      
    }
}
}
