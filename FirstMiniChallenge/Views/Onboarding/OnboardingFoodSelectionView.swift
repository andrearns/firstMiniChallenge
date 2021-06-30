//
//  OnboardingFoodSelectionView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingFoodSelectionView: View {
    
    
    var foodType: Food
    
    @State private var didSelected: Bool = false
    var body: some View {
        
        VStack{
            Button(action: {
                self.didSelected.toggle()
            })
            {
                HStack{
                    Text(foodType.name)
                        .foregroundColor(didSelected ? Color(.white): Color("TextColor"))
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                    Spacer()
                }
            }
            .frame(width: 300, height: 50, alignment: .center)
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                .strokeBorder(didSelected ? Color(#colorLiteral(red: 0.7419840097, green: 0.7937906384, blue: 0.4423563182, alpha: 1)) : Color.white, lineWidth: 3)
                .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
            )
        }
    }
}


struct OnboardingFoodSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingFoodSelectionView(foodType: Food(name: "öi",category: .legumesEVerduras, diet: .regular))
    }
}
