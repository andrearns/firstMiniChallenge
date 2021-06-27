//
//  PreferencesView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct PreferencesView: View {
    
    @State var preferencesConstruct = [
        Preferences(iconImage: "edit_circle", editText: "Editar Todos"),
        Preferences(iconImage: "leguminous_preferences", editText: "Editar Leguminosas"),
        Preferences(iconImage: "cereals_preferences", editText: "Editar Cereais"),
        Preferences(iconImage: "tubercles_preferences", editText: "Editar Tuberculos"),
        Preferences(iconImage: "vegetables_and_legumes__preferences", editText: "Editar Legumes e Verduras"),
        Preferences(iconImage: "fruits_meal_plan", editText: "Editar Frutas"),
        Preferences(iconImage: "nuts_preferences", editText: "Editar Oleaginosas"),
        Preferences(iconImage: "dairy__preferences", editText: "Editar Laticínios"),
        Preferences(iconImage: "meat_and_eggs__preferences", editText: "Editar Proteínas"),
        
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                HStack{
                    Image("UserPhoto")
                        .resizable()
                        .frame(width: 78, height: 78, alignment: .leading)
                        .padding()
                        .shadow(color: Color("Shadow"), radius: 30, x: 0.0, y: 30.0)
                    
                    VStack(alignment: .leading){
                        Text("Sua conta")
                            .font(.system(size: 24, weight: .semibold, design: .rounded))
                            .foregroundColor(Color("TextColor"))
                        
                        Text("Nome sinta se livre para \nalterar suas preferências")
                            .font(.system(size: 16, weight: .regular, design: .rounded))
                            .foregroundColor(Color("TextColor"))
                    }
                    
                    
                }
                
                VStack(alignment: .leading){
                    
                    ForEach(preferencesConstruct, id: \.id) { construct in
                        PreferencesCardView(preferencesEdit:construct)
                        
                        
                    }.frame(width: 340, height: 90, alignment: .leading)
                    
                    
                }
            }
        }
        
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView()
    }
}
