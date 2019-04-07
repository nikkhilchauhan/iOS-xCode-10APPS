//
//  ViewControllerNew.swift
//  TableViewApp
//
//  Created by Nikhil Chauhan on 17/10/18.
//  Copyright © 2018 Nikhil Chauhan. All rights reserved.
//

import UIKit

class ViewControllerNew: UIViewController {
    
    @IBOutlet weak var output_lbl: UILabel!
    var heroName = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output_lbl.text = "\(heroName)"
        
        if heroName == "One" {
            self.view.backgroundColor = UIColor.red
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
