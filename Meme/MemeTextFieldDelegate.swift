//
//  MemeTextFieldDelegate.swift
//  Meme
//
//  Created by Torres, Luis on 2/6/17.
//  Copyright © 2017 Torres, Luis. All rights reserved.
//

import Foundation
import UIKit

// MARK: - MemeTextFieldDelegate: NSObject, UITextFieldDelegate

class MemeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if (textField.tag == 0 && textField.text?.lowercased() == "top") ||
            (textField.tag == 1 && textField.text?.lowercased() == "bottom") {
            textField.text = ""
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField.tag == 0 && textField.text == "" {
            textField.text = "TOP"
        } else if textField.tag == 1 && textField.text == "" {
            textField.text = "BOTTOM"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true;
    }
}
