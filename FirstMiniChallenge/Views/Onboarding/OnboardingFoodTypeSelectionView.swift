//
//  OnboardingFoodTypeSelectionView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI


struct OnboardingFoodTypeSelectionView: View {
    
    var typeOfFood: String
    var image: String

    var body: some View {
        
        VStack{
            ZStack{
                VStack{
                    Image(image)
                    .frame(width: UIScreen.main.bounds.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                     .scaleEffect(CGSize(width: 0.5, height: 0.5))
                    }
                
                VStack(alignment: .leading){
                    Text("Que \(typeOfFood) \nvocê consome?")
                        .font(.system(size: 26, weight: .semibold, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                        //.padding(.bottom, 5)
                        
                    Text("Selecione uma ou mais opções")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                   }
                .padding(.top, 300)
                .padding(.leading)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                   
                   
            }
        }
        .ignoresSafeArea()
       
           
            
        
    }
}

struct OnboardingFoodTypeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFoodTypeSelectionView(typeOfFood: "leguminosa", image: "Leguminous_Wave_BG")
    }
}
