//
//  MealView2.swift
//  FirstMiniChallenge
//
//  Created by Ana C S Costa on 26/06/21.
//

import SwiftUI

struct ImageOverlay: View {
    var body: some View {
        
        ZStack (alignment: .center){

            Spacer()
            Image("Meal_Breakfast_1_8")
                .scaleEffect(CGSize(width: 0.45, height: 0.45))
        }
    }
}

struct ImageOverlay2: View {
    var body: some View {
        
        VStack (alignment: .leading){


            Text("Café da \nmanhã")
                .font(.title)
                .foregroundColor(.white)
                .bold()
                .padding([.leading, .bottom], 20.0)
                .padding([.top], 60.0)
        }
    }
}

struct MealView2: View {
    
    @State var isButtonPressed = false
    @State var pressedReset: String?

    
    var body: some View {
        VStack (alignment: .center){
            VStack (alignment: .leading){
                Image("Top_Breakfast")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height / 2.5)
                    .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                    .overlay(ImageOverlay(), alignment: .top)
                    .overlay(ImageOverlay2(), alignment: .topLeading)
                    .ignoresSafeArea()
                
            }

            
//            Spacer()
//                .padding(.bottom, 0)

            
//            List() {
            HStack {
                Image("dairy__meal_plan")
                    .frame(width: 76, height: 76)
                    .padding(10)
                    .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                    .scaleEffect(CGSize(width: 0.5, height: 0.5))

                VStack (alignment: .leading) {
                Text("Leite")
                    .foregroundColor(.primary)
                    .bold()
                    .font(.headline)
                    Text("Grupo dos Laticínios: são ricos em algumas vitaminas, principalmente a vitamina A e em cálcio. Podem ser ricos em gorduras saturadas, escolha opções com menos gordura.")
                        .foregroundColor(.secondary)
                        .font(.caption)
                }
                
                Button(action: {
                    print("button pressed")
                }) {
                    Image(systemName: "arrow.clockwise")
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .font(Font.system(size: 18, weight: .bold))
                        .padding()
                        .foregroundColor(.secondary)
                }
            }
            
            
            Spacer()
            HStack {
                Image("cereals_meal_plan")
                    .frame(width: 76, height: 76)
                    .padding(10)
                    .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                    .scaleEffect(CGSize(width: 0.5, height: 0.5))

                VStack (alignment: .leading) {
                Text("Pão Integral")
                    .foregroundColor(.primary)
                    .bold()
                    .font(.headline)
                    Text("Grupo dos Laticínios: são ricos em algumas vitaminas, principalmente a vitamina A e em cálcio. ")
                        .foregroundColor(.secondary)
                        .font(.caption)
                        .padding([.bottom, .trailing])
                }
                
                Button(action: {
                    print("button pressed")
                }) {
                    Image(systemName: "arrow.clockwise")
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .font(Font.system(size: 18, weight: .bold))
                        .padding()
                        .foregroundColor(.secondary)
                }
            }
            
            Spacer()
            HStack {
                Image("fruits_meal_plan")
                    .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                    .frame(width: 76, height: 76)
                    .padding(10)
                    .scaleEffect(CGSize(width: 0.5, height: 0.5))
                VStack (alignment: .leading) {
                Text("Mamão")
                    .foregroundColor(.primary)
                    .bold()
                    .font(.headline)
                    Text("Grupo das Frutas: excelentes fontes de fibras, de vitaminas e minerais. Sucos naturais da fruta nem sempre proporcionam os mesmos benefícios da fruta inteira.")
                        .foregroundColor(.secondary)
                        .font(.caption)
                        .padding([.bottom, .trailing])
                }
                Button(action: {
                    print("button pressed")
                }) {
                    Image(systemName: "arrow.clockwise")
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .font(Font.system(size: 18, weight: .bold))
                        .padding()
                        .foregroundColor(.secondary)
                }
            }
            Spacer()
                .padding(30)
//            }
        }
    }
}

struct MealView2_Previews: PreviewProvider {
    static var previews: some View {
        MealView2()
    }
}
