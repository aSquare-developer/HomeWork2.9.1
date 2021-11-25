//
//  DataManager.swift
//  HomeWork2.9.1
//
//  Created by Artur Anissimov on 26.11.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animationPreset = Spring.AnimationPreset.allCases
    let animationCurve = Spring.AnimationCurve.allCases
}
