//
//  LockableTextFieldDelegate.swift
//  ChallengeTextFieldDelegateApp
//
//  Created by Gerardo Teruel on 5/31/16.
//  Copyright © 2016 Gerardo Teruel. All rights reserved.
//

import UIKit

class LockableTextFieldDelegate: NSObject, UITextFieldDelegate {
  var isLocked: Bool = true
  
  func setLocked(locked: Bool) {
    isLocked = locked
  }
  
  func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
    return !isLocked
  }
}