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
  
  func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
    return isLocked
  }
}