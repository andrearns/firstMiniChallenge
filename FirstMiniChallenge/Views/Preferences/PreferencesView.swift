//
//  PreferencesView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct PreferencesView: View {
    
    @State var name = ""
    
    @State var preferencesConstruct = [
        Preferences(iconImage: "leguminous_preferences", editText: "Leguminosas", category: .feijoes),
        Preferences(iconImage: "cereals_preferences", editText: "Cereais", category: .cereaisAlmocoEJanta),
        Preferences(iconImage: "tubercles_preferences", editText: "Tuberculos", category: .raizesETuberculos),
        Preferences(iconImage: "vegetables_and_legumes__preferences", editText: "Legumes e Verduras", category: .legumesEVerduras),
        Preferences(iconImage: "fruits_meal_plan", editText: "Frutas", category: .frutas),
        Preferences(iconImage: "nuts_preferences", editText: "Oleaginosas", category: .castanhasENozes),
        Preferences(iconImage: "dairy__preferences", editText: "Laticínios", category: .leiteEQueijos),
        Preferences(iconImage: "meat_and_eggs__preferences", editText: "Proteínas", category: .carnesEOvos),
    ]
    
    func fetchName(){
        let name = UserDefaultsManager.fetchName() ?? ""
        self.name = name
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading){
                    HStack{
                        Image("UserPhoto")
                            .resizable()
                            .frame(width: 78, height: 78, alignment: .leading)
                            .padding()
                            .shadow(color: Color("Shadow_Strong"), radius: 30, x: 0.0, y: 30.0)
                        
                        VStack(alignment: .leading){
                            Text("Sua conta")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .foregroundColor(Color("TextColor"))
                            
                            Text("\(name), sinta se livre para \nalterar suas preferências")
                                .font(.system(size: 16, weight: .regular, design: .rounded))
                                .foregroundColor(Color("TextColor"))
                        }
                       
                    }.padding(.bottom, 40)
                    
                    VStack(alignment: .leading){
                        
                        ForEach(preferencesConstruct, id: \.id) { construct in
                            NavigationLink(
                                destination: PreferencesCategoryView(category: construct.category),
                                label: {
                                    PreferencesCardView(preferencesEdit:construct)
                                })
                            
                        }.frame(width: 340, height: 90, alignment: .leading)
                    }
                }.padding(.top, 60)
            }

        }
        .navigationBarHidden(true)
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.fetchName()
        }
    }
}

struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView()
    }
}
