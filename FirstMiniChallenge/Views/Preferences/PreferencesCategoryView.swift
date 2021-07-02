//
//  PreferencesCategoryView.swift
//  FirstMiniChallenge
//
//  Created by André Arns on 01/07/21.
//

import SwiftUI

struct PreferencesCategoryView: View {
    var category: Category
    
    @State var feijoes: [Food] = appData.allFeijoes
    @State var carnesEOvos: [Food] = appData.allCarnesEOvos
    @State var castanhasENozes: [Food] = appData.allCastanhasENozes
    @State var legumesEVerduras: [Food] = appData.allLegumesEVerduras
    @State var frutas: [Food] = appData.allFrutas
    @State var leiteEQueijos: [Food] = appData.allLeitesEQueijos
    @State var raizesETuberculos: [Food] = appData.allRaizesETuberculos
    @State var cereais: [Food] = appData.allCereais
    
    func fetchFeijoes() {
        let feijoes = UserDefaultsManager.fetchFeijoes() ?? []
        self.feijoes = appData.allFeijoes.map{ feijao -> Food in
            var feijao = feijao
            if !feijoes.filter({ leguminosa in
                feijao.id == leguminosa.id
            }).isEmpty{
                feijao.isSelected = true
            }
            return feijao
        }
    }
    
    func fetchCereais() {
        let cereais = UserDefaultsManager.fetchCereais() ?? []
        self.cereais = appData.allCereais.map{ item -> Food in
            var item = item
            if !cereais.filter({ cereal in
                item.id == cereal.id
            }).isEmpty{
                item.isSelected = true
            }
            return item
        }
    }
    
    func fetchCastanhasENozes() {
        let castanhasENozes = UserDefaultsManager.fetchCastanhasENozes() ?? []
        self.castanhasENozes = appData.allCastanhasENozes.map{ castanha -> Food in
            var castanha = castanha
            if !castanhasENozes.filter({ oleaginosa in
                castanha.id == oleaginosa.id
            }).isEmpty{
                castanha.isSelected = true
            }
            return castanha
        }
        
    }
    
    func fetchLegumesEVerduras() {
        let legumesEVerduras = UserDefaultsManager.fetchLegumesEVerduras() ?? []
        self.legumesEVerduras = appData.allLegumesEVerduras.map{ verde -> Food in
            var verde = verde
            if !legumesEVerduras.filter({ vegetal in
                verde.id == vegetal.id
            }).isEmpty{
                verde.isSelected = true
            }
            return verde
        }
    }
    
    func fetchFrutas() {
        let frutas = UserDefaultsManager.fetchFrutas() ?? []
        self.frutas = appData.allFrutas.map{ frutinha -> Food in
            var frutinha = frutinha
            if !frutas.filter({ fruta in
                frutinha.id == fruta.id
            }).isEmpty{
                frutinha.isSelected = true
            }
            return frutinha
        }
    }
    
    func fetchLaticinios() {
        let laticinios = UserDefaultsManager.fetchLaticinios() ?? []
        self.leiteEQueijos = appData.allLeitesEQueijos.map{ leite -> Food in
            var leite = leite
            if !laticinios.filter({ laticinio in
                leite.id == laticinio.id
            }).isEmpty{
                leite.isSelected = true
            }
            return leite
        }
    }
    
    func fetchRaizesETuberculos( ){
        let raizesETuberculos = UserDefaultsManager.fetchRaizesETuberculos() ?? []
        self.raizesETuberculos = appData.allRaizesETuberculos.map{ item -> Food in
            var raiz = item
            if !raizesETuberculos.filter({ item in
                raiz.id == item.id
            }).isEmpty{
                raiz.isSelected = true
            }
            return raiz
        }
    }
    
    func fetchCarnesEOvos() {
        let carnesEOvos = UserDefaultsManager.fetchCarnesEOvos() ?? []
        self.carnesEOvos = appData.allCarnesEOvos.map{ ovo -> Food in
            var ovo = ovo
            if !carnesEOvos.filter({ carne in
                ovo.id == carne.id
            }).isEmpty{
                ovo.isSelected = true
            }
            return ovo
        }
    }
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                if category == .feijoes {
                    ForEach(Array(zip(feijoes, feijoes.indices)), id: \.1) { leguminosa,i in
                        OnboardingFoodSelectionView(food: self.$feijoes[i], didSelected: leguminosa.isSelected)
                    }
                } else if category == .carnesEOvos {
                    ForEach(Array(zip(carnesEOvos, carnesEOvos.indices)), id: \.1) { carne,i in
                        OnboardingFoodSelectionView(food: self.$carnesEOvos[i], didSelected: carne.isSelected)
                    }
                } else if category == .castanhasENozes {
                    ForEach(Array(zip(castanhasENozes, castanhasENozes.indices)), id: \.1) { castanha,i in
                        OnboardingFoodSelectionView(food: self.$castanhasENozes[i], didSelected: castanha.isSelected)
                    }
                } else if category == .legumesEVerduras {
                    ForEach(Array(zip(legumesEVerduras, legumesEVerduras.indices)), id: \.1) { verdura,i in
                        OnboardingFoodSelectionView(food: self.$legumesEVerduras[i], didSelected: verdura.isSelected)
                    }
                } else if category == .frutas {
                    ForEach(Array(zip(frutas, frutas.indices)), id: \.1) { fruta,i in
                        OnboardingFoodSelectionView(food: self.$frutas[i], didSelected: fruta.isSelected)
                    }
                } else if category == .leiteEQueijos {
                    ForEach(Array(zip(leiteEQueijos, leiteEQueijos.indices)), id: \.1) { leite,i in
                        OnboardingFoodSelectionView(food: self.$leiteEQueijos[i], didSelected: leite.isSelected)
                    }
                } else if category == .raizesETuberculos {
                    ForEach(Array(zip(raizesETuberculos, raizesETuberculos.indices)), id: \.1) { raiz,i in
                        OnboardingFoodSelectionView(food: self.$raizesETuberculos[i], didSelected: raiz.isSelected)
                    }
                } else {
                    ForEach(Array(zip(cereais, cereais.indices)), id: \.1) { cereal,i in
                        OnboardingFoodSelectionView(food: self.$cereais[i], didSelected: cereal.isSelected)
                    }
                }
            }
        }.onAppear {
            self.fetchFrutas()
            self.fetchLaticinios()
            self.fetchFeijoes()
            self.fetchCereais()
            self.fetchRaizesETuberculos()
            self.fetchCarnesEOvos()
            self.fetchCastanhasENozes()
            self.fetchLegumesEVerduras()
        }
    }
}

struct PreferencesCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesCategoryView(category: .bebidas)
    }
}
