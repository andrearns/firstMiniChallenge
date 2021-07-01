//
//  FirstMiniChallengeApp.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 22/06/21.
//

import SwiftUI

@main
struct FirstMiniChallengeApp: App {
    @State var isOnboardingCompleted: Bool = false
    
    func fetchOnboardingCompleted() {
        let isOnboardingCompleted = UserDefaultsManager.fetchOnboardingCompleted() ?? false
        self.isOnboardingCompleted = isOnboardingCompleted
    }
    
    var body: some Scene {
        WindowGroup {
            VStack {
                if isOnboardingCompleted {
                    WeekView()
                } else {
                    OnboardingStartingView()
                }
            }.onAppear {
                self.fetchOnboardingCompleted()
            }
        }
    }
}
