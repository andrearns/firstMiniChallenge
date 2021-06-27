//
//  TipsCardView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct TipsCardView: View {
    @State private var isCardExpanded = false
    @State var tip: Tips
    
    var body: some View {
       
        VStack(alignment: .leading) {

            HStack {
                Rectangle()
                    .frame(width: 5)
                    .foregroundColor(Color(tip.color))
                    .cornerRadius(100)
           
                DisclosureGroup(tip.title, isExpanded: $isCardExpanded) {
                    VStack(alignment: .leading) {
                        Text(tip.bodyText)
                            .foregroundColor(Color("TextColor"))
        
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                    }.frame(maxWidth: .infinity)
                }
                .frame(alignment: .leading)
                .padding(40)
                .foregroundColor(Color("TextColor"))
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .cornerRadius(30)
                .background(Color(.white))
                .shadow(color: Color("Shadow"), radius: 50, x: 0.0, y: 40.0)
            }
        }.padding(.all)
    }
}


struct TipsCardView_Previews: PreviewProvider {
    static var previews: some View {
        TipsCardView(tip: Tips(title: "", bodyText: "", color: "Shadow"))
    }
}
