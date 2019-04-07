//
//  ViewController.swift
//  PickerView
//
//  Created by Nikhil Chauhan on 04/10/18.
//  Copyright © 2018 Nikhil Chauhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var pickerLbl: UILabel!
    
    var days: [String] = ["Sunday", "Monday", "Thursday", "wednesday", "Friday", "Staurday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let myDays = days[row]
        pickerLbl.text = "\(myDays)"
        return myDays
    
    }
    
    
}

