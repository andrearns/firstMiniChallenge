//
//  DaySelectorView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct DaySelectorView: View {
    
    var dayOfWeek = ["dom","seg", "ter", "qua", "qui", "sex","sáb"]
    
    @State var isButtonPressed = false
    @State var pressedDay: String?
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 350, height: 70, alignment: .center)
                .cornerRadius(10)
                .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
            
            HStack {
                ForEach(dayOfWeek, id: \.self){ day in
                    Button(action: {
                        self.pressedDay = day
                    }) {
                        Text("\(day)")
                            .frame(width: 31, height: 31, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .offset()
                            .font(.system(size: 14, weight: .bold, design: .rounded))
                            .foregroundColor(self.pressedDay == day ? .white : Color("TextColor"))
                            .padding(4)
                            .background(self.pressedDay == day ? Color("DefaultBlue") : .white)
                            .cornerRadius(10000)
                        
                    }
                }
            }
        }.padding(.bottom,15)
    }
}

struct DaySelectorView_Previews: PreviewProvider {
    static var previews: some View {
        DaySelectorView()
    }
}
