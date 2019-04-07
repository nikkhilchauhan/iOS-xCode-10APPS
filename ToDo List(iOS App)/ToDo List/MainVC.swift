//
//  MainVC.swift
//  ToDo List
//
//  Created by Nikhil Chauhan on 18/10/18.
//  Copyright © 2018 Nikhil Chauhan. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        grabData()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        grabData()   // to update data after saving new task
        tableView.reloadData() // same as above
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        //cell.textLabel?.text = "\(String(describing: task.name))"
        if let name = task.name {
            
            cell.textLabel?.text = "\(name)"
        }
        return cell
    }
    
    func grabData(){
        let guest = UIApplication.shared.delegate as! AppDelegate
        
        let context = guest.persistentContainer.viewContext
        
        do {
        tasks = try context.fetch(Task.fetchRequest())
        }
        
        catch {
           
            print("Failed to fetch data")
            
        }
        
        
        
    }
    

}

