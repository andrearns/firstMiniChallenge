//
//  TopMealView.swift
//  FirstMiniChallenge
//
//  Created by Ana C S Costa on 27/06/21.
//

import SwiftUI

struct ImageOverlayDish: View {
    var meal: Meal
    var body: some View {
        
        ZStack (alignment: .center){
            Image(meal.imageName)
                .scaleEffect(CGSize(width: 0.45, height: 0.45))
        }
    }
}

struct ImageOverlayType: View {
    var meal: Meal
    
    var body: some View {
        VStack (alignment: .leading){
            Text(meal.type.name)
                .font(.title)
                .foregroundColor(.white)
                .bold()
                .padding([.leading, .bottom], 25.0)
                .padding(.top, 60.0)
        }
    }
}

struct TopMealView: View {
    @State var meal: Meal

    var body: some View {
        VStack (alignment: .leading){
    
            Image(meal.type.topBackName)
                .resizable()
                .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height / 2.5)
                .shadow(color: Color(#colorLiteral(red: 0.8588235294, green: 0.8745098039, blue: 0.9450980392, alpha: 0.6)), radius: 30, x: 0.0, y: 40.0)
                .overlay(ImageOverlayDish(meal: meal), alignment: .top)
                .overlay(ImageOverlayType(meal: meal), alignment: .topLeading)
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
        }.ignoresSafeArea()
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        

    }
}

//struct TopMealView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMealView()
//    }
//}