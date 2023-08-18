//
//  ViewController.swift
//  BMI
//
//  Created by Ashraf Eltantawy on 17/08/2023.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var weightOulet: UISlider!
    @IBOutlet weak var heightOullet: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    var cluculatorBrain = CluculatorBrain()
    var height :Float?
    var weight :Float?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.height = heightOullet.value
        self.weight = weightOulet.value
    }

    @IBAction func heightSlider(_ sender: UISlider) {
       height = sender.value
        heightLabel.text = "\(String(format: "%.1f", sender.value))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weight = sender.value
        weightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    @IBAction func calculateClick(_ sender: UIButton) {
        cluculatorBrain.calulateBMI(weight: weight ?? 0.0, height: height ?? 0.0)
        print(height)
        print(weight)
        if let resultVC  = storyboard?.instantiateViewController(identifier: "ResultViewController") as? ResultViewController{
            resultVC.value = cluculatorBrain.getResult()
            resultVC.color = cluculatorBrain.getColor()
            resultVC.advice = cluculatorBrain.getAdvice()
            present(resultVC, animated: true)
        }
    
        
    }
}

