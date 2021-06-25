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
               
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Olá!")
                        .font(.system(size: 36, weight: .semibold, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                    
                    Text("Nós precisamos de algumas informações suas para criar um programa de planejamento alimentar personalizado para você")
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                        .frame(width: 330, height: 70, alignment: .leading)
                }
                
                
                VStack(alignment: .center) {
                    Image("cookingillustration")
                        .resizable()
                        .frame(width: 350, height: 500, alignment: .center)
                    
                    NavigationLink(
                        destination: OnboardingNameView(),
                        label: {
                            Text("Começar planejamento")
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                                .frame(width: 280, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(Color(#colorLiteral(red: 0.9244319797, green: 0.5056712031, blue: 0.4165437818, alpha: 1)))
                                .cornerRadius(10)
                        })
                }
                
                Spacer()
            }
        }
    }
}



struct OnboardingStartingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStartingView()
    }
}
