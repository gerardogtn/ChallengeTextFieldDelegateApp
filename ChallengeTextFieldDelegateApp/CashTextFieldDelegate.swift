//
//  CashTextFieldDelegate.swift
//  ChallengeTextFieldDelegateApp
//
//  Created by Gerardo Teruel on 5/31/16.
//  Copyright © 2016 Gerardo Teruel. All rights reserved.
//

import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
  
  var digitCount = 0
  var digitString = ""
 
  func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    
    var  text : String = ""
    if (Int(string) != nil) {
      digitCount += 1
      for c in string.characters {
        digitString.append(c)
      }
    } else if (string.isEmpty) {
      digitCount -= 1
      if (digitString.characters.count > 0) {
        digitString = digitString.substringToIndex(digitString.endIndex.predecessor())
      }
    } else {
      return false
    }
    
    if (digitString.characters.count == 0) {
      text = "$0.00"
    } else if (digitString.characters.count == 1) {
      text = "$0.0" + digitString
    } else if (digitString.characters.count == 2) {
      text = "$0." + digitString
    } else {
      let lastDecimalIndex = digitString.startIndex.advancedBy(digitString.characters.count - 2)
      text = "$" + digitString.substringToIndex(lastDecimalIndex) + "." + digitString.substringFromIndex(lastDecimalIndex)
    }
    
    textField.text = text
    
    return false
  }
}