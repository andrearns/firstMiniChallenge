//
//  MealPlanMainView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 24/06/21.
//

import SwiftUI

struct MealPlanMainView: View {
    var dayOfWeek = ["seg", "ter", "qua", "qui", "sex","sáb"]
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                
                Image("Top_Lunch")
                    .resizable()
                    .frame(width: 420, height: 350, alignment: .center)
                    .shadow(color: Color("Shadow"), radius: 30, x: 0.0, y: 40.0)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                   
                    Text("Planejamento \nAlimentar")
                        .foregroundColor(.white)
                        .font(.system(size: 36, weight: .semibold, design: .rounded))
                        
                      
                    
                    Text("Mario, acompanhe seus resultados\npara uma vida mais saudável")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                    
                     
                    
                }.padding(50)
               
                
                
                
                
            }
            
            HStack{
                Image(systemName: "chevron.left")
                    .foregroundColor(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
                Text("Semana Atual")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(Color("TextColor"))
                
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(#colorLiteral(red: 0.9079635143, green: 0.5370315909, blue: 0.4001197517, alpha: 1)))
            }.padding()
            
            ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                
            HStack {
                ForEach(dayOfWeek, id: \.self){ day in
                    
                    Text("\(day)")
                        .offset()
                        .font(.system(size: 15, weight: .bold, design: .rounded))
                        .foregroundColor(Color("TextColor"))
                        .padding(5)
                    
                }
            }
        }
            
            
            
            Spacer()
            
        }
    }
}


struct MealPlanMainView_Previews: PreviewProvider {
    static var previews: some View {
        MealPlanMainView()
    }
}
