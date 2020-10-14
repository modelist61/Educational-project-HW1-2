//
//  ViewController.swift
//  HW2_1=2
//
//  Created by Dmitry Tokarev on 14.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var changeLightsButtom: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeLightsButtom.layer.cornerRadius = 10
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func changeLights() {
        changeLightsButtom.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha < 1 && yellowLightView.alpha < 1 && greenLightView.alpha <= 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            
        } else if redLightView.alpha <= 1 && yellowLightView.alpha < 1 && greenLightView.alpha < 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            
        } else if redLightView.alpha < 1 && yellowLightView.alpha <= 1 && greenLightView.alpha < 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
          
        }
    }
}

