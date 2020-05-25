//
//  ViewController.swift
//  Dinamic Colors
//
//  Created by Boris Bogorad on 5/21/20.
//  Copyright © 2020 Boris Bogorad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorDisplayView: UIView!
    
    @IBOutlet var redIndexLabel: UILabel!
    @IBOutlet var greenIndexLabel: UILabel!
    @IBOutlet var blueIndexLabel: UILabel!
    
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redIndexLabel.text = String(Float(round(redSliderOutlet.value * 1000) / 100))
        greenIndexLabel.text = String(Float(round(greenSliderOutlet.value * 1000) / 100))
        blueIndexLabel.text = String(Float(round(blueSliderOutlet.value * 1000) / 100))
        
        colorDisplayView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value),
                                                   green: CGFloat(greenSliderOutlet.value),
                                                   blue: CGFloat(blueSliderOutlet.value),
                                                   alpha: 1.00)
    }
    

    @IBAction func redSlider() {
        
        redIndexLabel.text = String(Float(round(redSliderOutlet.value * 1000) / 100))
        
        colorDisplayView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value),
                                                   green: CGFloat(greenSliderOutlet.value),
                                                   blue: CGFloat(blueSliderOutlet.value),
                                                   alpha: 1.00)
    }
    
    @IBAction func greenSlider() {
        
        greenIndexLabel.text = String(Float(round(greenSliderOutlet.value * 1000) / 100))
        
        colorDisplayView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value),
                                                   green: CGFloat(greenSliderOutlet.value),
                                                   blue: CGFloat(blueSliderOutlet.value),
                                                   alpha: 1.00)
    }
    
    @IBAction func blueSlider() {
       
        blueIndexLabel.text = String(Float(round(blueSliderOutlet.value * 1000) / 100))
        
        colorDisplayView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value),
                                                   green: CGFloat(greenSliderOutlet.value),
                                                   blue: CGFloat(blueSliderOutlet.value),
                                                   alpha: 1.00)
    }
}

