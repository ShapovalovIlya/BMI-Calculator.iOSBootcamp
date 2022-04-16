//
//  CalculatorModel.swift
//  BMI Calculator
//
//  Created by Илья Шаповалов on 16.04.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorModel {
    
    var bmiValue: BMI?
    
    mutating func calculateBMI (height: Float, weight: Float) {
      let bmi = weight / pow(height, 2)
        
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi, advice: "Eat more pies!", color: .magenta)
        }else if bmi < 24.9 {
            bmiValue = BMI(value: bmi, advice: "Fit as a fiddle!", color: .systemGreen)
        }else {
            bmiValue = BMI(value: bmi, advice: "Eat less pies!", color: .systemRed)
        }
       
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? "Error!"
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? .gray
    }
}
