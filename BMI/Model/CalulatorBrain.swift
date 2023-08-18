//
//  CalulatorBrain.swift
//  BMI
//
//  Created by Ashraf Eltantawy on 18/08/2023.
//

import UIKit
struct CluculatorBrain{
    var bmi:BMI?
   mutating func calulateBMI(weight:Float,height:Float)
    {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat More Pies!", color:UIColor.blue )
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color:UIColor.green )
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat Less Pies!", color:UIColor.red )
        }
        
    }
    func getResult() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
        
    }
    func getColor()->UIColor{
        if let color = bmi?.color{
            return color
        }
    return UIColor()
    }
    func getAdvice()->String{
        if let advice = bmi?.advice{
            return advice
        }
        return ""
    }
    
}
