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
    static func setVeggie(model: Bool) {
        
        UserDefaults.standard.set(model, forKey: "Veggie")
    }
    
    static func fetchVeggie() -> Bool? {
        UserDefaults.standard.bool(forKey: "Veggie")
    }
    
    //Leguminosas
    static func setLeguminosas(model: [Food]) {
        let leguminosas: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(leguminosas)
        UserDefaults.standard.set(data, forKey: "Leguminosas")
    }
    
    static func fetchLeguminosas() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Leguminosas") else {
            return nil
        }

        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
    
    //Oleaginosas
    static func setOleaginosas(model: [Food]) {
        let oleaginosas: [Food] = model.filter {
            $0.isSelected
        }
        let data = try? JSONEncoder().encode(oleaginosas)
        UserDefaults.standard.set(data, forKey: "Oleaginosas")
    }
    
    static func fetchOleaginosas() -> [Food]? {
        guard let data = UserDefaults.standard.data(forKey: "Oleaginosas") else {
            return nil
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
            return nil
        }

        let model = try? JSONDecoder().decode([Food].self, from: data)
        return model
    }
    
}


