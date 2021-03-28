//
//  ViewController.swift
//  RGBbar
//
//  Created by Admin on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorRgbView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redLevelLabel: UILabel!
    @IBOutlet weak var greenLevelLabel: UILabel!
    @IBOutlet weak var blueLevelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SliderSettings
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0.5
        redSlider.minimumTrackTintColor = .red
        redLevelLabel.text = String(redSlider.value)
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0.5
        greenSlider.minimumTrackTintColor = .green
        greenLevelLabel.text = String(greenSlider.value)
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0.5
        blueSlider.minimumTrackTintColor = .blue
        blueLevelLabel.text = String(blueSlider.value)
        
        //viewSettings
        colorRgbView.layer.cornerRadius = 10
        colorRgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }

    @IBAction func redSliderAction() {
        redLevelLabel.text = String(format: "%.2f", redSlider.value)
        
        colorRgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func greenSliderAction() {
        greenLevelLabel.text = String(format: "%.2f", greenSlider.value)
        
        colorRgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func blueSliderAction() {
        blueLevelLabel.text = String(format: "%.2f", blueSlider.value)
        
        colorRgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }

}

