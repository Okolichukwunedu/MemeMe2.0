//
//  TextFieldsDelegate.swift
//  EditMeMe1.0
//
//  Created by Okoli-Chinedu on 19/07/2022.
//  Copyright © 2022 Okoli-Chinedu. All rights reserved.
//

import Foundation
import UIKit

class TextFieldsDelegate: NSObject, UITextFieldDelegate{
    
    //MARK: TextField Delegate Methods
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        //MARK: Figure out what the new text will be, if we return true
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return true
    }
    
    let originalText: [String: String] = [
        "top": "TOP TEXT",
        "bottom": "BOTTOM TEXT"
    ]
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text == originalText["top"] || textField.text == originalText["bottom"] {
            textField.text = " "
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
    }
}
