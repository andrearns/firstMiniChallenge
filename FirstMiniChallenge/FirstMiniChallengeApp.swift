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
    @State var selectedTab = Tab.mealPlan
    
    func fetchOnboardingCompleted() {
        let isOnboardingCompleted = UserDefaultsManager.fetchOnboardingCompleted() ?? false
        self.isOnboardingCompleted = isOnboardingCompleted
    }
    
    var body: some Scene {
        WindowGroup {
            VStack {
                if isOnboardingCompleted {
                    ZStack(alignment: .bottom){
                        if selectedTab == .tips {
                            TipsView()
                        } else if selectedTab == .preferences {
                            PreferencesView()
                        } else {
                            MealPlanMainView()
                        }
                  
                        TabBarView(selectedTab: $selectedTab)
                    }
                } else {
                    OnboardingStartingView()
                    
                }
            }.onAppear {
                self.fetchOnboardingCompleted()
            }
        }
    }
}
