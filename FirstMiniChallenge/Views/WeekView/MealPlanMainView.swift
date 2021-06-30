//
//  MealPlanMainView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 24/06/21.
//

import SwiftUI



struct MealPlanMainView: View {
    var dayOfWeek = ["dom","seg", "ter", "qua", "qui", "sex","sáb"]
    
    @State var isButtonPressed = false
    @State var pressedDay: String?
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack() {
                ZStack(alignment: .topLeading) {
                    
                    Image("Top_Lunch")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height / 2.5)
                        .shadow(color: Color("Shadow"), radius: 30, x: 0.0, y: 40.0)
                        .edgesIgnoringSafeArea(.top)
                       
                    VStack(alignment: .leading) {
                        
                        Text("Planejamento \nAlimentar")
                            .padding(.top, 100)
                            .foregroundColor(.white)
                            .font(.system(size: 36, weight: .semibold, design: .rounded))
                        
                        
                        
                        Text("\(userData.name), acompanhe seus resultados\npara uma vida mais saudável")
                            .padding(.top, 10)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .semibold, design: .rounded))
                        
                    }.padding(50)
                }.padding(.bottom, 30)
                

                WeekSelectorView()
                DaySelectorView(days: userData.weeks[0].days)
                
                VStack {
                    
//                    ForEach(meals, id: \.id) { meal in
//                        Button(action: {
//                            print("button pressed")
//                        }) {
//                            MealCardView(meal: meal)
//                        }.padding(15)
//                    }
                }.padding(.horizontal, 20)
                
                Spacer()
                
            }
        }.navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MealPlanMainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MealPlanMainView()
        }
    }
}
