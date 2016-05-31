//
//  ViewController.swift
//  ChallengeTextFieldDelegateApp
//
//  Created by Gerardo Teruel on 5/31/16.
//  Copyright © 2016 Gerardo Teruel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet var zipCodeTextField: UITextField!
  @IBOutlet var cashTextField: UITextField!
  @IBOutlet var lockedTextField: UITextField!
  @IBOutlet var isLockedSwitch: UISwitch!
  
  let zipCodeDelegate: ZipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()
  let cashDelegate: CashTextFieldDelegate = CashTextFieldDelegate()
  let lockDelegate: LockableTextFieldDelegate = LockableTextFieldDelegate()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    zipCodeTextField.delegate = zipCodeDelegate
    lockedTextField.delegate = lockDelegate
  }

  @IBAction func lockSwitchDidChange() {
    print(isLockedSwitch.on ? "Lock swith is ON, should not edit" : "Lock switch is OFF, should edit" )
    lockDelegate.setLocked(isLockedSwitch.on)
  }

}

