//
//  TipsCardView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct TipsCardView: View {
    @State private var isCardExpanded = false
    
    var body: some View {
        VStack(alignment: .leading){
           
            DisclosureGroup("dica n1", isExpanded: $isCardExpanded) {
             Text("Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1Dica n 1")
           
                
            }.background(Color(.white))
            .frame(width: 360, height: 100, alignment: .center)
            .padding(10)
            .foregroundColor(Color("TextColor"))
            .font(.system(size: 16, weight: .semibold, design: .rounded))
            .cornerRadius(20)
            .background(Color(.white))
            .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
        }.padding(.all)
    }
}


struct TipsCardView_Previews: PreviewProvider {
    static var previews: some View {
        TipsCardView()
    }
}
