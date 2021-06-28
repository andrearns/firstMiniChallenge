//
//  DaySelectorView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct DaySelectorView: View {
    
    @State var days: [Day]
    @State var isButtonPressed = false
    @State var pressedDay: Day?
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: 350, height: 70, alignment: .center)
                .cornerRadius(10)
                .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
            
            HStack {
                ForEach(days){ day in
                    Button(action: {
                        self.pressedDay = day
                        
                    }) {
                        VStack {
                            Spacer()
                            Text(String(day.dayOfMonth))
                                .font(.system(size: 15, weight: .bold, design: .rounded))
                            Spacer()
                            Text(day.abbreviation)
                                .font(.system(size: 13, weight: .bold, design: .rounded))
                            Spacer()
                        }
                        .padding(2)
                        .frame(width: 34, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset()
                        .foregroundColor( Color(.white))
                        .padding(4)
                        .background( Color("DefaultBlue"))
                        .cornerRadius(10000)
                        
                    }
                }
            }
        }.padding(.bottom,15)
    }
}

struct DaySelectorView_Previews: PreviewProvider {
    static var previews: some View {
        DaySelectorView(days: userData.weeks[0].days)
    }
}
