//
//  OnboardingMealView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingMealView: View {
    var body: some View {
        VStack{
            Spacer()
            ZStack(alignment:.top) {
                VStack(alignment: .leading){
                    Text("Este é seu prato...")
                        .font(.system(size: 36, weight: .semibold, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                    
                    Text("Seguindo o Guia Brasileiro da Alimentação Saudável, criaremos a partir das suas escolhas, refeições saudáveis e gostosas ")
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                        .frame(width: 330, height: 70, alignment: .leading)
                    
                }
            }
            
            
            ZStack(alignment: .bottom){
                Image("Plate_Cup_Onboarding")
                    .resizable()
                    .frame(width: 414, height: 480)
                
                
            }
          
            VStack{
                NavigationLink(
                    destination: OnboardingLeguminosasView(),
                    label: {
                        Text("Próximo")
                            .foregroundColor(.white)
                            .frame(width: 280, height: 60, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                            .cornerRadius(10)
                    })
            }.padding(.bottom, 50)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingMealView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingMealView()
    }
}
