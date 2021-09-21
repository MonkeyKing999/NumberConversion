//
//  ViewController.swift
//  NumberConversion
//
//  Created by Robert D. Brown on 9/21/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var fromPicker: UIPickerView!
    @IBOutlet weak var toPicker: UIPickerView!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    var conversionLabels = ["Binary","Decimal","Hexidecimal"]
    var convertFrom = "Decimal"
    var convertTo = "Binary"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTextField.delegate = self
        toPicker.delegate = self
        toPicker.dataSource = self
        fromPicker.delegate = self
        fromPicker.dataSource = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        var answer: String = ""
        
        if let number = textField.text
        {
            if convertFrom == "Binary" && convertTo == "Decimal"
            {
                answer = conversionOfBinaryToDecimal(number: number)
            }
            if convertFrom == "Hexidecimal" && convertTo == "Decimal"
            {
                answer = conversionOfHexidecimalToDecimal(number: number)
            }
            if convertFrom == "Decimal" && convertTo == "Binary"
            {
                answer = conversionOfDecimalToBinary(number: number)
            }
            if convertFrom == "Hexidecimal" && convertTo == "Binary"
            {
                answer = conversionOfHexidecimalToBinary(number: number)
            }
            if convertFrom == "Binary" && convertTo == "Hexidecimal"
            {
                answer = conversionOfBinaryToHexidecimal(number: number)
            }
            if convertFrom == "Decimal" && convertTo == "Hexidecimal"
            {
                answer = conversionOfDecimalToHexidecimal(number: number)
            }
            outputLabel.text = answer
        }
        
        return true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return conversionLabels.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return conversionLabels[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == toPicker
        {
            convertTo = conversionLabels[row]
        }
        
        if pickerView == fromPicker
        {
            convertFrom = conversionLabels[row]
        }
    }
    
    //MARK: - MVP
    
    func conversionOfDecimalToBinary(number: String) -> String  {
        //Your Code Here, Remove the return statement
        return ""
    }
    
    //MARK: - Stretch #1
    func conversionOfBinaryToDecimal(number: String) -> String {
        //Your Code Here, Remove the return statement
        return ""
    }

    //MARK: - Stretch #2
    func conversionOfDecimalToHexidecimal(number: String) -> String  {
        //Your Code Here, Remove the return statement
        return ""
    }
    
    //MARK: - Stretch #3
    func conversionOfHexidecimalToDecimal(number: String) -> String  {
        //Your Code Here, Remove the return statement
        return ""
    }

    //MARK: - Stretch #4
    func conversionOfBinaryToHexidecimal(number: String) -> String  {
        //Your Code Here, Remove the return statement
        return ""
    }
    
    //MARK: - Stretch #5
    func conversionOfHexidecimalToBinary(number: String) -> String  {
        //Your Code Here, Remove the return statement
        return ""
    }

    

    
    
}


