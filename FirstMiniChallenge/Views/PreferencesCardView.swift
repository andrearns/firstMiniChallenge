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
                .frame(width: 58, height: 58, alignment: .leading)
                
            
            Text(preferencesEdit.editText)
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .foregroundColor(Color("TextColor"))
                .padding(60)
            
            Image("chevron_right_retangle")
                .resizable()
                .frame(width: 56, height: 56, alignment: .trailing)
            
            
                
        }.background(Color(.white))
        .padding(3)
    }
}

struct PreferencesCardView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesCardView(preferencesEdit: Preferences(iconImage: "", editText: ""))
    }
}
