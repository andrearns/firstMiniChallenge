//
//  MealView.swift
//  FirstMiniChallenge
//
//  Created by Ana C S Costa on 25/06/21.
//

import SwiftUI




struct MealView: View {


    var body: some View {

        VStack (alignment: .leading) {
            
            ScrollView {
            TopMealView()

                VStack {
                    FoodView(foodName: "Leite")
                    FoodView(foodName: "Leite")
                    FoodView(foodName: "Leite")
                    FoodView(foodName: "Leite")
                    FoodView(foodName: "Leite")
                }
                .padding(.top, 40)
                
            }.navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.all)
            }
        }
    }


struct MealView_Previews: PreviewProvider {
    static var previews: some View {
        MealView()
    
    }
}
