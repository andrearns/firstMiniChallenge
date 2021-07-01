//
//  OnboardingPreparing.swift
//  FirstMiniChallenge
//
//  Created by alis frentzel on 29/06/21.
//

import SwiftUI

struct OnboardingPreparing: View {
    @State var animate = false
    @State var isOnboardingCompleted = false
    
    func fetchOnboardingCompleted(){
        let isOnboardingCompleted = UserDefaultsManager.fetchOnboardingCompleted() ?? false
        self.isOnboardingCompleted = isOnboardingCompleted
    }
    
    var body: some View {
        VStack(alignment: .center){
            Text("Preparando o seu cardápio personalizado...")
                .font(.system(size: 24, weight: .semibold, design: .rounded))
                .foregroundColor(Color("TextColor"))
                .padding()
                .multilineTextAlignment(.center)
            
            Image("Loading_Plate")
                .rotationEffect(.init(degrees: self.animate ? 360 : 0))
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))

        }.navigationBarBackButtonHidden(true)
        .onAppear {
            self.animate.toggle()
            isOnboardingCompleted = true
            UserDefaultsManager.setOnboardingCompleted(model: isOnboardingCompleted)
            self.fetchOnboardingCompleted()
        }
        
    }
}

struct OnboardingPreparing_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPreparing()
    }
}
