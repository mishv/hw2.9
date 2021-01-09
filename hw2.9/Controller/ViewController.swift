//
//  ViewController.swift
//  hw2.9
//
//  Created by Misha on 02.01.2021.
//

import Spring

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var animateButton: UIButton!
    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var codeTextView: UITextView!
    @IBOutlet weak var buttonLabel: SpringLabel!
    
    // MARK: - Properties
    private var animationsArray = AnimationPreset.getAnimationsList()
    private var animationsCurveArray = AnimationCurve.getAnimationCurveList()
    private var codeText: String = ""
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateButton.layer.cornerRadius = animateButton.frame.size.height / 2
        
        animationView.layer.cornerRadius = 10
        animationView.layer.borderWidth = 2
        animationView.layer.borderColor = CGColor.init(srgbRed: 59/255, green: 166/255, blue: 248/255, alpha: 1)
        
    }
    
    // MARK: - IBActions
    @IBAction func animateButtonTapped(_ sender: UIButton) {
        sender.pulsate()
        
        codeText = ""
        
        showButtonAndViewAnimations()
        showAnimationText()
        
    }
    
    // MARK: - Private Functions
    private func showButtonAndViewAnimations() {
        
        buttonLabel.animation = animationsArray[Int.random(in: 0...animationsArray.count-1)].rawValue
        buttonLabel.animate()
        
        animationView.animation = animationsArray[Int.random(in: 0...animationsArray.count-1)].rawValue
        animationView.curve = animationsCurveArray[Int.random(in: 0...animationsCurveArray.count-1)].rawValue
        animationView.duration = CGFloat(Float.random(in: 1...2))
        animationView.animate()
        
    }
    
    private func showAnimationText() {
        
        if animationView.animation != "" {
            codeText += "layer.animation = \"\(animationView.animation)\"\n"
        }
        if animationView.curve != "" {
            codeText += "layer.curve = \"\(animationView.curve)\"\n"
        }
        if animationView.force != 1 {
            codeText += String(format: "layer.force =  %.1f\n", Double(animationView.force))
        }
        if animationView.duration != 0.7 {
            codeText += String(format: "layer.duration =  %.1f\n", Double(animationView.duration))
        }
        if animationView.delay != 0 {
            codeText += String(format: "layer.delay =  %.1f\n", Double(animationView.delay))
        }
        if animationView.scaleX != 1 {
            codeText += String(format: "layer.scaleX =  %.1f\n", Double(animationView.scaleX))
        }
        if animationView.scaleY != 1 {
            codeText += String(format: "layer.scaleY =  %.1f\n", Double(animationView.scaleY))
        }
        if animationView.rotate != 0 {
            codeText += String(format: "layer.rotate =  %.1f\n", Double(animationView.rotate))
        }
        if animationView.damping != 0.7 {
            codeText += String(format: "layer.damping =  %.1f\n", Double(animationView.damping))
        }
        if animationView.velocity != 0.7 {
            codeText += String(format: "layer.velocity =  %.1f\n", Double(animationView.velocity))
        }
        codeText += "layer.animate()"
        
        codeTextView.text = codeText
        
    }
    
}

// test

