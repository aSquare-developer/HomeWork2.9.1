//
//  ViewController.swift
//  HomeWork2.9.1
//
//  Created by Artur Anissimov on 24.11.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var runButton: UIButton!
    
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    private var animation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getRandomAnimation()
        animationDescription()
    }
    
    private func getRandomAnimation() {
        animation = Animation(preset: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
                              curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
                              force: Double.random(in: 0...2),
                              duration: Double.random(in: 0...2),
                              delay: Double.random(in: 0...1))
    }
    
    private func animationDescription() {
        presetLabel.text = "Preset: \(animation.preset)"
        curveLabel.text = "Curve: \(animation.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", animation.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animation.duration))"
        delayLabel.text = "Delat: \(String(format: "%.2f", animation.delay))"
    }
    
    private func animateView() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
    }
    
    @IBAction func runSpringAnimation() {
        animateView()
        animationDescription()
        getRandomAnimation()
        runButton.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    
}

