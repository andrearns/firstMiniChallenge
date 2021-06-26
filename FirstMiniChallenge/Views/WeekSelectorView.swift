//
//  WeekSelectorView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct WeekSelectorView: View {
    
    var body: some View {
       
        HStack{
            
            Button(action: {
                print("button pressed")
            }) {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
            }
            
            Text("Semana Atual")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(Color("TextColor"))
            
            
            Button(action: {
                print("button pressed")
            }) {
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
            }
            
        }.padding()
    }
}

struct WeekSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        WeekSelectorView()
    }
}
