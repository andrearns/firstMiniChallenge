//
//  PreferencesView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct PreferencesView: View {
    var body: some View {
        
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack {
                
                
                ZStack(alignment: .topLeading) {
                    
                    Image("Top_Tips")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height / 2.5)
                        .shadow(color: Color("Shadow"), radius: 30, x: 0.0, y: 40.0)
                        .edgesIgnoringSafeArea(.top)
                    
                    
                    VStack(alignment: .leading) {
                        
                        Text("Dicas")
                            .padding(.top, 100)
                            .foregroundColor(.white)
                            .font(.system(size: 36, weight: .semibold, design: .rounded))
                        
                        
                        
                        Text("Dicas rápidas para ajudar na sua mudança de vida com uma alimentação mais saudável!")
                            .padding(.top, 10)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .semibold, design: .rounded))
                        
                    }.padding(50)
                }.padding(.bottom, 30)
                
                
            }
        }.navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.all)
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView()
    }
}
