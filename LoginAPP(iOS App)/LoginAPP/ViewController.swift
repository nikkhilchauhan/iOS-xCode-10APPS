//
//  ViewController.swift
//  LoginAPP
//
//  Created by Nikhil Chauhan on 08/10/18.
//  Copyright © 2018 Nikhil Chauhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var selectState: UIButton!
    @IBOutlet weak var lblMSG: UILabel!
    
    var states = ["Uttar Pradesh", "Colorado", "California", "Maharashtra", "Delaware", "Georgia"]

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let myStates = states[row]
        return myStates
    }
    
    @IBAction func btnSelect(_ sender: Any) {
    pickerView.isHidden = false
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let state = states[row]
        selectState.setTitle(state, for: .normal)
        pickerView.isHidden = true
    }

    @IBAction func btnRegister(_ sender: Any) {
        
        lblMSG.isHidden = false
        
        if name.text == "" || email.text == "" || password.text == "" {
            lblMSG.text = "Please fill all required field"
        }
            
        else{
            
            let name1 = (name.text!)
            let email1 = (email.text!)
            let password1 = (password.text!)
            
            lblMSG.text = "\(name1)"+"\(email1)"+"\(password1)"
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
}

