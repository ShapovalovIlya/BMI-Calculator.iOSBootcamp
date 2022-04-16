//
//  CalculatorModel.swift
//  BMI Calculator
//
//  Created by Илья Шаповалов on 16.04.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorModel {
    
    var bmiValue: Float = 0
    
    mutating func calculateBMI (height: Float, weight: Float) {
        bmiValue = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiValue)
    }
}
