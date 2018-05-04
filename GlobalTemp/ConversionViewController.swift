//
//  ConversionViewController.swift
//  GlobalTemp
//
//  Created by Sean Brage on 5/3/18.
//  Copyright © 2018 Sean Brage. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var fahrenheitValue: Double?
    
    var celsiusValue: Double? {
        guard let value = fahrenheitValue else {
            return nil
        }
        return (value - 32) * (5/9)
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
    
    @IBAction func fahrenheitFieldChanged(textField: UITextField) {
        guard let text = textField.text, !text.isEmpty else {
            self.celsiusLabel.text = "???"
            return
        }
        
        celsiusLabel.text = text
    }
    
}
