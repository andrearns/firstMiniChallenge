//
//  WithoutMealPlanningCardView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct WithoutMealPlanningCardView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
                
                Text("Parece que você não planejou nenhuma refeição para esse dia :(")
                    .foregroundColor(Color("TextColor"))
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .padding(10)
                
            }.frame(width: UIScreen.main.bounds.width / 1.1, height: UIScreen.main.bounds.height / 5, alignment: .center)
            .padding(50)
            
            ZStack {
                
                Button(action: {
                        print("NavegarParaOutraPagina")}) {
                    
                    Text("Começar planejamento")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundColor(.white)
                        .frame(width: 280, height: 60, alignment: .center)
                        .background(Color("DefaultBlue"))
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct WithoutMealPlanningCardView_Previews: PreviewProvider {
    static var previews: some View {
        WithoutMealPlanningCardView()
    }
}
