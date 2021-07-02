//
//  UserDefaultManager.swift
//  FirstMiniChallenge
//
//  Created by HANNA P C FERREIRA on 29/06/21.
//

import Foundation

class UserDefaultsManager {
    //    static func setModel(model: Model) {
    //        let data = try? JSONEncoder().encode(model)
    //        UserDefaults.standard.set(data, forKey: "model")
    //    }
    //
    //    static func fetchModel() -> Model? {
    //        guard let data = UserDefaults.standard.data(forKey: "model") else {
    //            return nil
    //        }
    //
    //        let model = try? JSONDecoder().decode(Model.self, from: data)
    //        return model
    //    }
    
    //Username
    static func setName(name: String) {
        UserDefaults.standard.set(name, forKey: "user")
    }
    
    static func fetchName() -> String? {
        UserDefaults.standard.string(forKey: "user")
    }
    
    //Veggie
    static func setDiet(model: Diet) {
        let data = try? JSONEncoder().encode(model)
        return UserDefaults.standard.set(data, forKey: "Diet")
    }
    
    static func fetchDiet() -> Diet? {
        guard let data = UserDefaults.standard.data(forKey: "Diet") else {
            return .regular
        }
        
        let model = try? JSONDecoder().decode(Diet.self, from: data)
        return model
    }
    
    //Leguminosas
    static func setFeijoes(model: [Food]) {
        let feijoes: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(feijoes)
        UserDefaults.standard.set(data, forKey: "Feijões")
    }
    
    static func fetchFeijoes() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Feijões") else {
            return []
        }
        
        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
    
    //Oleaginosas
    static func setCastanhasENozes(model: [Food]) {
        let castanhasENozes: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(castanhasENozes)
        UserDefaults.standard.set(data, forKey: "Castanhas e Nozes")
    }
    
    static func fetchCastanhasENozes() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Castanhas e Nozes") else {
            return []
        }
        
        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
    
    //Cereais
    static func setCereais(model: [Food]) {
        let cereais: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(cereais)
        UserDefaults.standard.set(data, forKey: "Cereais")
    }
    
    static func fetchCereais() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Cereais") else {
            return []
        }
        
        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
    //Laticinios
    static func setLaticinios(model: [Food]) {
        let laticinios: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(laticinios)
        UserDefaults.standard.set(data, forKey: "Laticinios")
    }
    
    static func fetchLaticinios() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Laticinios") else {
            return []
        }
        
        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
    //Vegetais
    static func setLegumesEVerduras(model: [Food]) {
        let legumesEVerduras: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(legumesEVerduras)
        UserDefaults.standard.set(data, forKey: "Legumes e verduras")
    }
    
    static func fetchLegumesEVerduras() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Legumes e verduras") else {
            return []
        }
        
        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
    //Carnes e Ovos
    static func setCarnesEOvos(model: [Food]) {
        let carnesEOvos: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(carnesEOvos)
        UserDefaults.standard.set(data, forKey: "Carnes e ovos")
    }
    
    static func fetchCarnesEOvos() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Carnes e ovos") else {
            return []
        }
        
        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
    //Cereais
    static func setFrutas(model: [Food]) {
        let frutas: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(frutas)
        UserDefaults.standard.set(data, forKey: "Frutas")
    }
    
    static func fetchFrutas() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Frutas") else {
            return []
        }
        
        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
    //Tuberculos
    static func setRaizesETuberculos(model: [Food]) {
        let raizesETuberculos: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(raizesETuberculos)
        UserDefaults.standard.set(data, forKey: "Raízes e Tuberculos")
    }
    
    static func fetchRaizesETuberculos() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Raízes e Tuberculos") else {
            return []
        }
        
        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
    // Verifica se o onboarding já foi preenchido
    static func setOnboardingCompleted(model: Bool) {
        UserDefaults.standard.setValue(model, forKey: "isOnboardingCompleted")
    }
    
    static func fetchOnboardingCompleted() -> Bool? {
        UserDefaults.standard.bool(forKey: "isOnboardingCompleted")
    }
    
    // Semanas
    static func setWeeks(model: [Week]) {
        print("UserDefaults: \(model)")
        let data = try? JSONEncoder().encode(model)
        UserDefaults.standard.set(data, forKey: "Semanas")
    }
    
    static func fetchWeeks() -> [Week]? {
        guard let data = UserDefaults.standard.data(forKey: "Semanas") else {
            return []
        }
        
        let model = try? JSONDecoder().decode([Week].self, from: data)
        return model
    }
    
}


