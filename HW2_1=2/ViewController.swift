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
        redLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    
    @IBAction func changeLights() {
        
        if redLightView.alpha < 1 {
            redLightView.alpha = 1
            changeLightsButtom.setTitle("NEXT", for: .normal)
        } else if yellowLightView.alpha < 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            changeLightsButtom.setTitle("NEXT", for: .normal)
        } else if greenLightView.alpha < 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            changeLightsButtom.setTitle("NEXT", for: .normal)
        }
        
    }
    

}

