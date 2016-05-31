//
//  ZipCodeTextViewDelegate.swift
//  ChallengeTextFieldDelegateApp
//
//  Created by Gerardo Teruel on 5/31/16.
//  Copyright © 2016 Gerardo Teruel. All rights reserved.
//

import UIKit


class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
  
  func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    
    let text: String? = textField.text

    var isValid = (text?.characters.count)! + string.characters.count <= 5
    isValid = isValid && (Int(string) != nil || string.isEmpty)
    
    return isValid
  }
  
}