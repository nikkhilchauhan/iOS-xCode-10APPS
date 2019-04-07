//
//  AddTaskVC.swift
//  ToDo List
//
//  Created by Nikhil Chauhan on 20/10/18.
//  Copyright © 2018 Nikhil Chauhan. All rights reserved.
//

import UIKit

class AddTaskVC: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var needSmiley: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveBtn(_ sender: Any) {
        let guest = UIApplication.shared.delegate as! AppDelegate
        
        let context = guest.persistentContainer.viewContext
        
        let task = Task(context: context)
        
        if let name = textField.text{
            
            task.name = name
        }
        
        task.smiley = needSmiley.isOn
        
        guest.saveContext()
        
        navigationController?.popViewController(animated: true)
        
        
    }
    
}
