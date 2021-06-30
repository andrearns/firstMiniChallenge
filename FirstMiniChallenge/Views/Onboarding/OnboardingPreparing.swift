//
//  OnboardingPreparing.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 29/06/21.
//

import SwiftUI

struct OnboardingPreparing: View {
    var body: some View {
        VStack(alignment: .center){
            Text("Preparando o seu plano personalizado")
                .font(.system(size: 32, weight: .semibold, design: .rounded))
                .foregroundColor(Color("TextColor"))
                .padding()
                .multilineTextAlignment(.center)
            
            Image("plate_all")
                .resizable()
                .frame(width: 139, height: 139)

        }.navigationBarBackButtonHidden(true)
        
    }
}

struct OnboardingPreparing_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPreparing()
    }
}
