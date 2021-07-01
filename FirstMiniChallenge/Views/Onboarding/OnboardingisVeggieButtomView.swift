//
//  OnboardingisVeggieButtomView.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 27/06/21.
//

import SwiftUI

struct OnboardingisVeggieButtomView: View {
    
    var name: String
    var diet: Diet
    var button: String
    var body: some View {
        VStack{
            Image(button)
                .resizable()
                .frame(width: 157, height: 130)
                .overlay(
                    Text(name)
                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                )
                .padding()
        }
    }
}

struct OnboardingisVeggieButtomView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingisVeggieButtomView(name: "não sou veggie", diet: .regular, button: "button_NaoSouVeg")
    }
}
