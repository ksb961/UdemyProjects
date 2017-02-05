//
//  ViewController.swift
//  MiraclePill
//
//  Created by Kasidi Bellanger on 2017-02-05.
//  Copyright © 2017 Kasidi Bellanger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var cLabel: UILabel!
    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var zcTextField: UITextField!
    @IBOutlet weak var zCode: UILabel!
    @IBOutlet weak var stateButton: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPress(_ sender: Any) {
        statePicker.isHidden = false;
        cLabel.isHidden = true;
        cTextField.isHidden = true;
        zCode.isHidden = true;
        zcTextField.isHidden = true;
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true;
        cLabel.isHidden = false;
        cTextField.isHidden = false;
        zCode.isHidden = false;
        zcTextField.isHidden = false;
    }
    

}

