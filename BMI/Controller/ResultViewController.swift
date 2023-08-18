//
//  ResultViewController.swift
//  BMI
//
//  Created by Ashraf Eltantawy on 18/08/2023.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    var value:String?
    var advice:String?
    var color:UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.text = value
        adviceLabel.text = advice
        view.backgroundColor = color
    
    }
    

    @IBAction func reCalulatePress(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
