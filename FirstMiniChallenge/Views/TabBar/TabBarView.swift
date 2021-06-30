//
//  TabBarView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            
            TipsView()
                .tabItem {
                    Image(systemName: "sparkles.square.fill.on.square")
                        .foregroundColor(Color("TextColor"))
                    Text("Dicas")
                }
            
            MealPlanMainView()
                .tabItem {
                    Image(systemName: "doc.plaintext.fill")
                        .foregroundColor(Color("TextColor"))
                    Text("Planejamento")
                }
            
            PreferencesView()
                .tabItem {
                    Image(systemName: "person.circle")
                        .foregroundColor(Color("TextColor"))
                    Text("Preferências")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
