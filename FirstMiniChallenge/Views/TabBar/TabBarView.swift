//
//  TabBarView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct TabBarView: View {
    
    @Binding var selectedTab: Tab
    
    var body: some View {
        
        ZStack {
            
            HStack(spacing: 0) {
                TabBarButton(image: "sparkles.square.fill.on.square", text: "Dicas", tab: .tips, selectedTab: $selectedTab)
                
                TabBarButton(image: "doc.plaintext.fill", text: "Planejamento", tab: .mealPlan, selectedTab: $selectedTab)
                
                TabBarButton(image: "person.circle", text: "Preferências", tab: .preferences, selectedTab: $selectedTab)
            }.padding()
            .background(
                Color.white
                    .cornerRadius(25)
                    .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
            ).padding(.horizontal)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TabBarButton: View {
    
    var image: String
    var text: String
    var tab: Tab
    @Binding var selectedTab: Tab
    
    var body: some View {
        
        return AnyView (
            Button(action: {
                withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5, blendDuration: 0.5)){
                    selectedTab = tab
                }
            },label: {
                VStack {
                    Image(systemName: image)
                        .font(.system(size: 25, weight:.semibold))
                        .offset(y: selectedTab == tab ? -10 : 0)
                        .foregroundColor(selectedTab == tab ? Color("AlmocoTagColor") : Color("TextColor"))
                        
                        .padding(1.5)
                    
                    Text("\(text)")
                        .font(.system(size: 10, weight:.semibold))
                        .offset(y: selectedTab == tab ? -10 : 0)
                        .foregroundColor(selectedTab == tab ? Color("AlmocoTagColor") : Color("TextColor"))
                }
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .contentShape(Rectangle())
        ).frame(height: 50)
    }
}


enum Tab {
    case preferences
    case mealPlan
    case tips
    
}
