//
//  UserSettings.swift
//  Renpho Health
//
//  Created by Filomena Vigliotti on 22/11/22.
//

import Foundation
import Combine

class UserSettings: ObservableObject {
    @Published var weight: Float {
        didSet {
            UserDefaults.standard.set(weight, forKey: "Weight") //setter
        }
    }
    
    @Published var height: Int {
        didSet {
            UserDefaults.standard.set(height, forKey: "Height")
        }
    }
    
    init() {
        self.weight = UserDefaults.standard.float(forKey: "Weight") //getter
        self.height = UserDefaults.standard.integer(forKey: "Height")
    }
}
