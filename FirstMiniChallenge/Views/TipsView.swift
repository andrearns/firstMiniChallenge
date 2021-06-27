//
//  TipsView.swift
//  FirstMiniChallenge
//
//  Created by Daniella Onishi on 26/06/21.
//

import SwiftUI

struct TipsView: View {
    
    @State var tipTimeOptimization = [
        Tips(title: "Lave as  verduras e legumes assim quando voltar do mercado", bodyText: "\nGuardar esses alimentos já lavados em sua geladeira é uma prática que você vai agradecer muito na hora for  preparar alguma refeição que eles estiverem presentes!Mas lembre-se de secá-los bem antes de guardá-los.", color: "TimeOptimizationTag"),
        Tips(title: "Deixe as frutas já cortadas em potinhos", bodyText: "\nEssa prática te ajuda a ter frutas sempre à disposição para que você não fique com preguiça de prepará-las quando aquela fominha bater! Se possível, guarde-as em potes não transparentes, para que elas não escureçam", color: "TimeOptimizationTag"),
        Tips(title: "Deixe o feijão e grão de bico de molho antes de cozinhá-los", bodyText: "\nDeixar esses grãos de molho antes de colocá-los no fogo diminui consideravelmente seu tempo de cozimento e eles ficarão prontos mais rápido para poderem ser devidamente degustados!", color: "TimeOptimizationTag")
      
    ]
    
    
    
    @State var tipConservation = [
        Tips(title: "Armazenamento de frutas", bodyText: "\nMuita atenção para as frutas que soltam gás etileno (maçã, abacate, manga, pêra, banana, mamão)! Elas devem ser armazenadas em ambientes ventilados e frescos e podem ir à geladeira, desde que fechados em potes ou sacos do tipo ziplock.Já as frutas que não soltam etileno devem ser armazenadas na geladeira na parte mais baixa e em sacos plásticos higienizados. ", color: "ConservationTag"),
      
    ]
    
    
    @State var tipHealthyKitchen = [
        Tips(title: "Invista em uma panela antiaderente", bodyText: "\nEsse tipo de panela exige pouca quantidade de óleo na preparação de alimentos, sendo uma boa opcão para quem quer ter uma alimentação mais saudável. ", color: "HealthyKitchenTag"),
      
    ]
    
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack {
                
                
                ZStack(alignment: .topLeading) {
                    
                    Image("Top_Tips")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width ,height: UIScreen.main.bounds.height / 2.5)
                        .shadow(color: Color("Shadow"), radius: 30, x: 0.0, y: 40.0)
                        .edgesIgnoringSafeArea(.top)
                    
                    
                    VStack(alignment: .leading) {
                        
                        Text("Dicas")
                            .padding(.top, 100)
                            .foregroundColor(.white)
                            .font(.system(size: 36, weight: .semibold, design: .rounded))
                        
                        
                        
                        Text("Dicas rápidas para ajudar na sua mudança de vida com uma alimentação mais saudável!")
                            .padding(.top, 10)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .semibold, design: .rounded))
                        
                    }.padding(50)
                }.padding(.bottom, 30)
                
              Text("Otimização de Tempo")
                .font(.system(size: 24, weight: .semibold, design: .rounded))
                .foregroundColor(Color("TextColor"))
                .padding(.trailing, 120)
                .padding(20)
            
                ForEach(tipTimeOptimization, id: \.id) { tip in
                    TipsCardView(tip: tip)
                }
                
                
                Text("Conservação de Alimentos")
                  .font(.system(size: 24, weight: .semibold, design: .rounded))
                  .foregroundColor(Color("TextColor"))
                  .padding(.trailing, 80)
                    .padding(.top,40)
                    .padding(.bottom,20)

                
                ForEach(tipConservation, id: \.id) { tip in
                    TipsCardView(tip: tip)
                }
                
                
                Text("Cozinha 101")
                  .font(.system(size: 24, weight: .semibold, design: .rounded))
                  .foregroundColor(Color("TextColor"))
                  .padding(.trailing, 220)
                    .padding(.top,40)
                    .padding(.bottom,20)
                
                ForEach(tipHealthyKitchen, id: \.id) { tip in
                    TipsCardView(tip: tip)
                }
            }
        }.navigationBarTitleDisplayMode(.inline)
        .edgesIgnoringSafeArea(.all)
    }
}


struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
