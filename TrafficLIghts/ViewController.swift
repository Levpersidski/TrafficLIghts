//
//  ViewController.swift
//  TrafficLIghts
//
//  Created by Роман Бакаев on 18.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    enum lightColor {
        case red
        case yellow
        case green
        case off
    
    }
    
    var currentLight = lightColor.off
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
        
        redLightView.layer.cornerRadius = 65
        yellowLightView.layer.cornerRadius = 65
        greenLightView.layer.cornerRadius = 65
        startButton.backgroundColor = UIColor.red
        
    }


    @IBAction func startButtonPressed( ) {
        switch currentLight {
        case .red:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            currentLight = .yellow
            startButton.backgroundColor = .systemYellow
        case .yellow:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            currentLight = .green
            startButton.backgroundColor = .green
        case .green:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            startButton.setTitle("START", for: .normal)
            currentLight = .off
            startButton.backgroundColor = .red
            
        case .off:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
            startButton.setTitle("NEXT", for: .normal)
            currentLight = .red
        }
        
        }
    
    }
    
        


