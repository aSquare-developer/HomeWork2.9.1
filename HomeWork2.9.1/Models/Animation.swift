//
//  Animation.swift
//  HomeWork2.9.1
//
//  Created by Artur Anissimov on 24.11.2021.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

extension Animation {
    static func getRandomAnimation() -> Animation {
        Animation(preset: DataManager.shared.animationPreset.randomElement()?.rawValue ?? "",
                  curve: DataManager.shared.animationCurve.randomElement()?.rawValue ?? "",
                  force: Double.random(in: 0...1.5),
                  duration: Double.random(in: 1...2),
                  delay: Double.random(in: 0.2...0.5))
    }
}
