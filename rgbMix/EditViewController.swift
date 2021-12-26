//
//  ViewController.swift
//  rgbMix
//
//  Created by Игорь Шевырёв on 09.12.2021.
//

import UIKit

class EditViewController: UIViewController {
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbView.layer.cornerRadius = 20
        rgbView.backgroundColor = UIColor(
            red: 0.5,
            green: 0.5,
            blue: 0.5,
            alpha: 1
        )
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        }
    
    @IBAction func sliderAction() {
        let redValue = redSlider.value
        let greenValue = greenSlider.value
        let blueValue = blueSlider.value
        
        rgbView.backgroundColor = UIColor(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1)
        
        redLabel.text = String(redValue)
        greenLabel.text = String(greenValue)
        blueLabel.text = String(blueValue)
    }
    @IBAction func doneButtonAction(_ sender: UIButton) {
    }
    
}
    


