//
//  ViewController.swift
//  TrafficLIghts
//
//  Created by Роман Бакаев on 18.05.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var redLightView: UIView!

    @IBOutlet var yelowLightView: UIView!
    
    @IBOutlet var greenLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = CGFloat(0.3)
        yelowLightView.alpha = CGFloat(0.3)
        greenLightView.alpha = CGFloat(0.3)

    }

    @IBAction func startButtonPressed() {
    }
    
}

