//
//  TopMealView.swift
//  FirstMiniChallenge
//
//  Created by Ana C S Costa on 27/06/21.
//

import SwiftUI

struct ImageOverlayDish: View {
    var body: some View {
        
        ZStack (alignment: .center){

            Spacer()
            Image("Meal_Breakfast_1_8")
                .scaleEffect(CGSize(width: 0.45, height: 0.45))
        }
    }
}

struct ImageOverlayType: View {
    var body: some View {
        
        VStack (alignment: .leading){


            Text("Café da \nmanhã")
                .font(.title)
                .foregroundColor(.white)
                .bold()
                .padding([.leading, .bottom], 25.0)
                .padding([.top], 60.0)
        }
    }
}

struct TopMealView: View {
//    @State var meal: Meal

    var body: some View {
        VStack (alignment: .leading){
            Image("Top_Breakfast")
                .resizable()
                .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height / 2.5)
                .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                .overlay(ImageOverlay(), alignment: .top)
                .overlay(ImageOverlay2(), alignment: .topLeading)
                .ignoresSafeArea()
            
            
        }

    }
}

struct TopMealView_Previews: PreviewProvider {
    static var previews: some View {
        TopMealView()
    }
}
