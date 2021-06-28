//
//  OnboardingNameView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 25/06/21.
//

import SwiftUI

struct OnboardingNameView: View {
    
    @State var username = ""
    
    var body: some View {
        
            
            VStack {
               Spacer()
                ZStack{
                    VStack{
                        Image("Top_Circle_Red_BG")
                            .frame(width: UIScreen.main.bounds.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .scaleEffect(CGSize(width: 0.6, height: 0.6))
                    }
                    .padding(.top,-340)
                    
                    Spacer()
                        .padding(.top,100)
                    
                    VStack(alignment: .leading) {
                        Text("Qual é o seu\nnome?")
                            .font(.system(size: 36, weight: .semibold, design: .rounded))
                            .foregroundColor(Color("TextColor"))
                            .frame(width: 350, height: 100, alignment: .leading)
                        VStack{
                            TextField("Seu nome", text: $username)
                                .padding()
                                .frame(width: 350, height: 70, alignment: .center)
                                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                .cornerRadius(7)
                                .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                        }
                    }
                   // .padding()
                }
               // .padding(.top,-120)
                

               //Spacer()
                //.padding()
                
                VStack(alignment: .center) {
                    NavigationLink(
                        destination: OnboardingIsVeggieView(),
                        label: {
                            Text("Começar planejamento")
                                .foregroundColor(.white)
                                .frame(width: 280, height: 60, alignment: .center)
                                .background(Color(#colorLiteral(red: 0.5481224656, green: 0.7942695618, blue: 0.8297637105, alpha: 1)))
                                .cornerRadius(10)
                        })
                        
                }
                //Spacer()
                .padding(.bottom, 30)
               
                
            }//final
            .ignoresSafeArea()
        
    }
}

struct OnboardingNameView_Previews: PreviewProvider {
    static var previews: some View {
        
            OnboardingNameView()
        
        
    }
}
