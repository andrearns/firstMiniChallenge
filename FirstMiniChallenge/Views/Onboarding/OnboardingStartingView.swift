//
//  OnboardingStartingView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 25/06/21.
//

import SwiftUI

struct OnboardingStartingView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                
                Spacer()
                ZStack{
                    VStack(alignment: .leading) {
                        
                        Text("Olá!")
                            .font(.system(size: 36, weight: .semibold, design: .rounded))
                            .foregroundColor(Color("TextColor"))
                        
                        Text("Nós precisamos de algumas informações suas para criar um programa de planejamento alimentar personalizado para você")
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                            .foregroundColor(Color("TextColor"))
                            .frame(width: 330, height: 70, alignment: .leading)
                    }
                }
                
                
                VStack{
                    Image("cookingillustration")
                        .resizable()
                        .frame(width: 303, height: 448.37, alignment: .center)
                }
                
                Spacer()
                VStack{
                    NavigationLink(
                        destination: OnboardingNameView(),
                        label: {
                            Text("Criar um planejamento personalizado")
                                .font(.system(size: 14, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .frame(width: 280, height: 60, alignment: .center)
                                .background(Color(#colorLiteral(red: 0.9244319797, green: 0.5056712031, blue: 0.4165437818, alpha: 1)))
                                .cornerRadius(10)
                        })
                        .navigationBarBackButtonHidden(true)
                    
                }.padding(.bottom, 50)
            }.edgesIgnoringSafeArea(.all)
        }
    }
}



struct OnboardingStartingView_Previews: PreviewProvider {
    static var previews: some View {
        
        OnboardingStartingView()
        
    }
}
