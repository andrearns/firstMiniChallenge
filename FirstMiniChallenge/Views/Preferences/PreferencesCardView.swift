//
//  PreferencesCardView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 27/06/21.
//

import SwiftUI

struct PreferencesCardView: View {
    
    @State var preferencesEdit: Preferences
    
    var body: some View {
        HStack {
            
            Image(preferencesEdit.iconImage)
                .resizable()
                .frame(width: 52, height: 52, alignment: .leading)
                .shadow(color: Color("Shadow_Strong"), radius: 16, x: 0.0, y: 15.0)
            
            Text(preferencesEdit.editText)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .foregroundColor(Color("TextColor"))
                .padding(.leading, 15)
            
            Spacer()
            
            Image("Chevron_Square")
                .resizable()
                .frame(width: 48, height: 48, alignment: .trailing)
            
        }.background(Color(.white))
        .padding(3)
    }
}

struct PreferencesCardView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesCardView(preferencesEdit: Preferences(iconImage: "", editText: ""))
    }
}
