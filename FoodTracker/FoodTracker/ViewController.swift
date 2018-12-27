//
//  ViewController.swift
//  FoodTracker
//
//  Created by Alec Fuglem on 12/25/18.
//  Copyright © 2018 Alec Fuglem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARk: Properties
    
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var ntf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ntf.delegate = self
    }
    
    //MARK: OPTIONS
    @IBAction func setDefaultLabelText(_ sender: Any) {
        mealNameLabel.text = "Default Text"
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text

    }
    
}

