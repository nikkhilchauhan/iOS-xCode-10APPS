//
//  ViewController.swift
//  Oyee
//
//  Created by Nikhil Chauhan on 12/10/18.
//  Copyright © 2018 Nikhil Chauhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    var time = 0
    var timer = Timer() //object of predefined class Timer
    var buttonState = true

    override func viewDidLoad() {
        super.viewDidLoad()
        timeLbl.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func startbtnTapped(_ sender: Any) {
        
        if buttonState == true{
            
            startBtn.setTitle("Pause", for: .normal)
            buttonState = false
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.addToTime), userInfo: nil, repeats: true)
     
        }
        else{
            startBtn.setTitle("Start", for: .normal)
            buttonState = true
            timer.invalidate()
        }
        
    }
    
    @IBAction func btnReset(_ sender: Any) {
        timer.invalidate()
        timeLbl.text = "0"
        time = 0
        startBtn.setTitle("Start", for: .normal)
        buttonState = true
    }
    
    @IBAction func btnExit(_ sender: Any) {
        exit(0)
    }
    
    
    @objc func addToTime() {
        time = time+1
        timeLbl.text = "\(time)"
    }
    

}

